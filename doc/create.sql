-- 生成TacoOrder的建表SQL，使用下划线命名法
-- 生成的SQL如下：
-- 增加comment
CREATE TABLE `taco_order`
(
    `id`              bigint(20) NOT NULL AUTO_INCREMENT,
    `delivery_name`   varchar(255) NOT NULL COMMENT '收货人姓名',
    `delivery_street` varchar(255) NOT NULL COMMENT '收货人街道',
    `delivery_city`   varchar(255) NOT NULL COMMENT '收货人城市',
    `delivery_state`  varchar(255) NOT NULL COMMENT '收货人省份',
    `delivery_zip`    varchar(255) NOT NULL COMMENT '收货人邮编',
    `cc_number`       varchar(255) NOT NULL COMMENT '信用卡号',
    `cc_expiration`   varchar(255) NOT NULL COMMENT '信用卡有效期',
    `cc_cvv`          varchar(255) NOT NULL COMMENT '信用卡CVV',
    `placed_at`       timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- taco的建表SQL
CREATE TABLE `taco`
(
    `id`         bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `name`       varchar(255) NOT NULL COMMENT '名称',
    `order_id`    bigint(20) NOT NULL COMMENT '订单ID',
    `created_at` timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- taco_ingredient的建表SQL
CREATE TABLE `taco_ingredient`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `taco_id`       bigint(20) NOT NULL COMMENT 'tacoID',
    `ingredient_id` bigint(20) NOT NULL COMMENT 'ingredientID',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ingredient的建表SQL
CREATE TABLE `ingredient`
(
    `id`   varchar(255) NOT NULL COMMENT '主键',
    `name` varchar(255) NOT NULL COMMENT '名称',
    `type` varchar(255) NOT NULL COMMENT '类型',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

