  SELECT CASE
            WHEN h.type = 'a' THEN '形容词'
            WHEN h.type = 'ad' THEN '副形词'
            WHEN h.type = 'ag' THEN '形容词性语素'
            WHEN h.type = 'al' THEN '形容词性惯用语'
            WHEN h.type = 'an' THEN '名形词'
            WHEN h.type = 'b' THEN '区别词'
            WHEN h.type = 'bg' THEN '区别语素'
            WHEN h.type = 'c' THEN '连词'
            WHEN h.type = 'd' THEN '副词'
            WHEN h.type = 'dg' THEN '辄，俱，复之类的副词'
            WHEN h.type = 'e' THEN '叹词'
            WHEN h.type = 'f' THEN '方位词'
            WHEN h.type = 'g' THEN '学术词汇'
            WHEN h.type = 'gb' THEN '生物相关词汇'
            WHEN h.type = 'gc' THEN '化学相关词汇'
            WHEN h.type = 'gg' THEN '地理地质相关词汇'
            WHEN h.type = 'gi' THEN '计算机相关词汇'
            WHEN h.type = 'gm' THEN '数学相关词汇'
            WHEN h.type = 'gp' THEN '物理相关词汇'
            WHEN h.type = 'h' THEN '前缀'
            WHEN h.type = 'i' THEN '成语'
            WHEN h.type = 'j' THEN '简称略语'
            WHEN h.type = 'k' THEN '后缀'
            WHEN h.type = 'l' THEN '习用语'
            WHEN h.type = 'm' THEN '数词'
            WHEN h.type = 'mg' THEN '数语素'
            WHEN h.type = 'mq' THEN '数量词'
            WHEN h.type = 'n' THEN '名词'
            WHEN h.type = 'nba' THEN '动物名'
            WHEN h.type = 'nf' THEN '食品'
            WHEN h.type = 'ng' THEN '名词性语素'
            WHEN h.type = 'nhd' THEN '疾病'
            WHEN h.type = 'nhm' THEN '药品'
            WHEN h.type = 'nis' THEN '机构后缀'
            WHEN h.type = 'nmc' THEN '化学品名'
            WHEN h.type = 'nnd' THEN '职业'
            WHEN h.type = 'nnt' THEN '职务职称'
            WHEN h.type = 'nr' THEN '人名'
            WHEN h.type = 'nrf' THEN '音译人名'
            WHEN h.type = 'ns' THEN '地名'
            WHEN h.type = 'nt' THEN '机构团体名'
            WHEN h.type = 'nz' THEN '其他专名'
            WHEN h.type = 'o' THEN '拟声词'
            WHEN h.type = 'p' THEN '介词'
            WHEN h.type = 'q' THEN '量词'
            WHEN h.type = 'qg' THEN '量词语素'
            WHEN h.type = 'qt' THEN '时量词'
            WHEN h.type = 'r' THEN '代词'
            WHEN h.type = 'rg' THEN '代词性语素'
            WHEN h.type = 's' THEN '处所词'
            WHEN h.type = 't' THEN '时间词'
            WHEN h.type = 'tg' THEN '时间词性语素'
            WHEN h.type = 'u' THEN '助词'
            WHEN h.type = 'ud' THEN '助词'
            WHEN h.type = 'ug' THEN '过'
            WHEN h.type = 'uj' THEN '助词'
            WHEN h.type = 'ul' THEN '连词'
            WHEN h.type = 'uv' THEN '连词'
            WHEN h.type = 'uz' THEN '着'
            WHEN h.type = 'v' THEN '动词'
            WHEN h.type = 'vd' THEN '副动词'
            WHEN h.type = 'vf' THEN '趋向动词'
            WHEN h.type = 'vg' THEN '动词性语素'
            WHEN h.type = 'vi' THEN '不及物动词（内动词）'
            WHEN h.type = 'vn' THEN '名动词'
            WHEN h.type = 'x' THEN '字符串'
            WHEN h.type = 'y' THEN '语气词'
            WHEN h.type = 'z' THEN '状态词'
         END
            AS wt,
         h.type,
         count (1) c
    FROM hanlp_word_type h
GROUP BY h.type
ORDER BY c DESC