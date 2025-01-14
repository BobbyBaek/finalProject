package kr.co.project.order.model.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderDetailDTO {
private int od_no;//주문상세번호
private int od_price;//주문물품가격
private int od_count;//주문물품수량
private int o_no;//주문번호
private int g_no;//상품번호
//--------------------------
private String g_name;//상품이름
private int g_price;//물건 하나당 가격
private String g_file_name;//사진
}
