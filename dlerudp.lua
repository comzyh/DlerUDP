ngx.req.read_body()
local data = ngx.req.get_body_data()
local args = ngx.req.get_uri_args()
local supscribeKey = ngx.var.subkey
local res = ngx.location.capture("/rawsubscribe/" .. supscribeKey, {
    method = ngx.HTTP_GET,
    body = data,
    args = args
})
ngx.say("# Generated by DlerUDP")
local lyaml = require "lyaml"
local config = lyaml.load(res.body, {all = true})[1]

proxies = {proxies = {}}
for i, v in ipairs(config.proxies) do
    if v.udp then proxies[#proxies + 1] = v end
end
config.proxies = proxies

ngx.say(lyaml.dump({config}))
