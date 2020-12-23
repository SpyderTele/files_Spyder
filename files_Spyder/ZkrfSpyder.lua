local function Zkrf(msg)
local text = msg.content_.text_

if text == "تعطيل الزخرفه" and Owner(msg) then
send(msg.chat_id_, msg.id_, '⌔︙ تم تعطيل الزخرفه')
database:set(bot_id.." MERO:zhrf_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الزخرفه" and Owner(msg) then
send(msg.chat_id_, msg.id_,'⌔︙ تم تفعيل الزخرفه')
database:set(bot_id.." MERO:zhrf_Bots"..msg.chat_id_,"open")
end
if text and text:match("^زخرفه (.*)$") and database:get(bot_id.." MERO:zhrf_Bots"..msg.chat_id_) == "open" then
local TextZhrfa = text:match("^زخرفه (.*)$")
zh = https.request('https://ahmedcg4.ml/Spyder/en.php?en='..URL.escape(TextZhrfa)..'')
zx = JSON.decode(zh)
t = "\n⌔︙قائمه الزخرفه \nٴ⌔︙○━━━Spyder━━━⌔︙○ٴ \n"
i = 0
for k,v in pairs(zx.ok) do
i = i + 1
t = t..i.."-  `"..v.."` \n"
end
send(msg.chat_id_, msg.id_, t..'ٴ○━━━l━━━○ٴ\n⌔︙اضغط على الاسم ليتم نسخه')
end
end
return {
Spyder = Zkrf
}
