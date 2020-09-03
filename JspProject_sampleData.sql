/*
    #적용 순서
    1. C:\[본인 Eclipse Workspace 경로]\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\webapps\upload_img 폴더 생성 ( 기존에 생성된 폴더일 경우, 해당 이미지 다 삭제 )
    2. git 다운받은 폴더의 WebContent\sample_img 폴더 '안'에있는 모든 이미지 복사 후 1번의 upload_img 폴더 '안'에 전체 복사 
    3. DB table (product, product_image) '내용' 전부 삭제 (테이블 삭제 후 테이블을 다시 만들어도 같음)
    4. 시퀀스 (seq_product_image, seq_shop_product) 삭제
    5. 해당파일과 같은 경로에 있는 JSPProject.jsp에서 삭제한 시퀀스(seq_product_image, seq_shop_product) 생성 쿼리문 실행
    6. 해당 파일의 쿼리문을 '전체선택' 후 실행 
    7. 페이지 결과 확인
       - 카테고리 페이지에서 상의(top) 20개, 하의(bottom) 17개 갯수 확인
       - 어떤 경로로 상품정보페이지에 접근해도 상품별 대표이미지와 디테일이미지 확인
       ** 위 두가지 사항이 확인되면 정상 **
*/
-------------------------------------------------------------------------------------------------------------------------- top
insert into product values (SEQ_SHOP_PRODUCT.nextval, '브렌디드 셔츠블라우스', 42000, '/upload_img/top1.jpg', 
                            '여리여리한 실루엣을 연출하는 레이온 혼방 소재로 페미닌한 무드를 선사하는 블렌디드 셔츠블라우스', 
                            sysdate, 550, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 1, '/upload_img/top1_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 1, '/upload_img/top1_detail2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 1, '/upload_img/top1_detail3.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '도트가통통 랩블라우스', 45000, '/upload_img/top2.jpg', 
                            '브이 네크라인으로 여리여리함을! 랩 스타일로 스타일리쉬함까지 더해주는 블라우스 경쾌한 도트 패턴과 브이 네크라인으로 단정하면서도 고급스럽게 착용하기 좋은 블라우스에요.', 
                            sysdate, 120, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 2, '/upload_img/top2_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 2, '/upload_img/top2_detail2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 2, '/upload_img/top2_detail3.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '[디즈니정품] 클로버미키 반팔티셔츠', 25000, '/upload_img/top3.jpg', 
                            '행운의 상징인 네잎클로버를 들고있는 귀여운 미키 마우스 프린팅 티셔츠랍니다.', 
                            sysdate, 150, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 3, '/upload_img/top3_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 3, '/upload_img/top3_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '소프트모달 나시가디건세트', 36000, '/upload_img/top4.jpg', 
                            '나시와 가디건이 셋뚜셋뚜! 높은 활용도를 자랑하는 나시가디건세트!', 
                            sysdate, 757, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 4, '/upload_img/top4_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 4, '/upload_img/top4_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '딜라잇데이 코튼셔츠', 32000, '/upload_img/top5.jpg', 
                            '코튼 원단으로 쾌적한 착용감과 내추럴한 핏으로 여기저기 다양하게 활용 가능한 데일리 셔츠!', 
                            sysdate, 512, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 5, '/upload_img/top5_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 5, '/upload_img/top5_detail2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 5, '/upload_img/top5_detail3.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '레이어드 반팔티셔츠', 19000, '/upload_img/top6.jpg', 
                            '', 
                            sysdate, 15, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 6, '/upload_img/top6_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 6, '/upload_img/top6_detail2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 6, '/upload_img/top6_detail3.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '쫀득텐션 긴팔티셔츠', 19800, '/upload_img/top7.jpg', 
                            '쫀득~쫀득한 소재로 여리여리함은 물론, 어디에나 데일리 하게 입어지는 베이직 긴팔 티셔츠', 
                            sysdate, 150, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 7, '/upload_img/top7_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 7, '/upload_img/top7_detail2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 7, '/upload_img/top7_detail3.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '아이니쥬 단가라크롭후드', 45000, '/upload_img/top8.jpg', 
                            '블랙 스트라이프 패턴과 크롭 길이감으로 다리라인은 길어 보이면서 편안하게 입기 좋은 후드 티셔츠에요', 
                            sysdate, 70, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 8, '/upload_img/top8_detail1.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '썸띵레터링 맨투맨', 43800, '/upload_img/top9.jpg', 
                            '쫀쫀한 라운드 시보리 네크라인으로 입어지는 맨투맨이에요. 적당히 드롭된 어깨라인으로 여리여리한 핏을 연출해 드리며 적당한 길이감으로 다양한 하의 아이템과 레이어링 하시기 좋답니다', 
                            sysdate, 13, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 9, '/upload_img/top9_detail1.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '레터링크롭 반팔티셔츠', 13200, '/upload_img/top10.jpg', 
                            '색다른 느낌으로 힙하고 싶은 날! 유니크하면서 트렌디한 느낌의 레터링 크롭 티셔츠', 
                            sysdate, 15, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 10, '/upload_img/top10_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 10, '/upload_img/top10_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '여리함의정석 골지니트티셔츠', 29800, '/upload_img/top11.jpg', 
                            '산뜻한 컬러감과 베이직한 디자인으로 데일리룩 완성! 임블리메이드 여리여리 골지니트티셔츠', 
                            sysdate, 67, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 11, '/upload_img/top11_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 11, '/upload_img/top11_detail2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 11, '/upload_img/top11_detail3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 11, '/upload_img/top11_detail4.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '햇살이비출땐 크롭니트', 29000, '/upload_img/top12.jpg', 
                            '부드러운 레이온 소재와 시원한 마(린넨) 합성소재로 한여름에도 편안하게 입기 좋은 크롭 니트에요', 
                            sysdate, 67, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 12, '/upload_img/top12_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 12, '/upload_img/top12_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '파스텔골드 니트가디건세트', 57000, '/upload_img/top13.jpg', 
                            '봄을 담은 화사한 파스텔 컬러감은 물론, 따로 또 같이 활용하기 좋은 니트 가디건 세트', 
                            sysdate, 10, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 13, '/upload_img/top13_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 13, '/upload_img/top13_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '싱그러운 레이어드크롭니트', 29000, '/upload_img/top14.jpg', 
                            '싱그러운 그린 컬러로 포인트를 똬-악! 은은한 비침으로 여성스러움을 더해주는 크롭 니트!', 
                            sysdate, 36, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 14, '/upload_img/top14_detail1.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '썸띵데이 양브이니트', 20300, '/upload_img/top15.jpg', 
                            '세상 여리한 쇄골라인을 완성해주는 양브이 네크라인으로 청순 또는 섹시하게-!', 
                            sysdate, 24, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 15, '/upload_img/top15_detail1.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '깔끔카라 단가라반팔니트', 42000, '/upload_img/top16.jpg', 
                            '심플하고 단정하게- 어디든 입기 좋은 스트라이프 반팔 니트', 
                            sysdate, 1111, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 16, '/upload_img/top16_detail1.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '블루빛플라워 랩블라우스', 45000, '/upload_img/top17.jpg', 
                            '블루 플라워 패턴으로 포인트 업! 여성스럽게 착용하기 좋은 랩 블라우스', 
                            sysdate, 1425, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 17, '/upload_img/top17_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 17, '/upload_img/top17_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '플라워부케 프릴블라우스', 45000, '/upload_img/top18.jpg', 
                            '내 품안에 부케가 한아름-! 하늘하늘 여리한 느낌으로 입기 좋은 블라우스', 
                            sysdate, 250, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 18, '/upload_img/top18_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 18, '/upload_img/top18_detail2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 18, '/upload_img/top18_detail3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 18, '/upload_img/top18_detail4.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '컬러톡! 린넨셔츠', 23400, '/upload_img/top19.jpg', 
                            '올해도 역시 시원한 린넨! 컬러가 톡톡! 다양한 컬러웨이를 보여주는 임블리 메이드 린넨 셔츠', 
                            sysdate, 188, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 19, '/upload_img/top19_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 19, '/upload_img/top19_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '퍼플팝 더블포켓셔츠', 23400, '/upload_img/top20.jpg', 
                            'OH-! 싱그러운 퍼플팝! 시선을 한 눈에 사로잡는 체크 셔츠!', 
                            sysdate, 780, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 20, '/upload_img/top20_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 20, '/upload_img/top20_detail2.jpg');
------------------------------------------------------------------------------------------------------------------------------




------------------------------------------------------------------------------------------------------------------------bottom
insert into product values (SEQ_SHOP_PRODUCT.nextval, '잘빠진부츠컷 데님팬츠', 33250, '/upload_img/bottom1.jpg', 
                            '완벽한 다리라인을 연출해 주는 잘빠진부츠컷 데님팬츠! 하이웨이스트로 편안하게 입어지며, 4계절 내내 두루두루 활용하기 좋은 데님 팬츠에요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 21, '/upload_img/bottom1_detail1.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '[블리텐션]찰랑쿨~ 스트링와이드팬츠', 25000, '/upload_img/bottom2.jpg', 
                            '차원이 다른 시원함을 더해주는 [블리텐션]찰랑쿨~ 스트링와이드팬츠', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 22, '/upload_img/bottom2_detail1.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '핏이좋자낭 데님팬츠', 37000, '/upload_img/bottom3.jpg', 
                            '다리라인을 길어 보이게 연출해주는 핏이좋자낭 데님팬츠', 
                           sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 23, '/upload_img/bottom3_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 23, '/upload_img/bottom3_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '감쪽같은 페이즐리치마바지', 29000, '/upload_img/bottom4.jpg', 
                            '보기만 해도 시원한 페이즐리 패턴이 포인트 룩으로 안성맞춤인 치마바지에요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 24, '/upload_img/bottom4_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 24, '/upload_img/bottom4_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '캐주얼일자핏 데님팬츠', 32000, '/upload_img/bottom5.jpg', 
                            '은은한 연청 컬러감의 워싱으로 캐주얼하게 착용하기 좋은 데님팬츠에요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 25, '/upload_img/bottom5_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 25, '/upload_img/bottom5_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '블리베이직 린넨치마바지', 25200, '/upload_img/bottom6.jpg', 
                            '8수의 린넨과 면 소재가 혼방되어 시원하면서도 탄탄함. 땀을 빠르게 흡수하고 발산하는 린넨과 부드럽고 쾌적함을 유지시켜주는 면 소재의 만남으로 내구성과 청량감을 극대화한 치마바지', 
                           sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 26, '/upload_img/bottom6_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 26, '/upload_img/bottom6_detail2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 26, '/upload_img/bottom6_detail3.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '워싱은그레이쥐 숏멜빵팬츠', 65000, '/upload_img/bottom7.jpg', 
                            '캐주얼한 스타일링에 안성맞춤인 오묘한 워싱의 숏 멜빵 팬츠에요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 27, '/upload_img/bottom7_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 27, '/upload_img/bottom7_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '요건몰랐지 버튼치마바지', 28000, '/upload_img/bottom8.jpg', 
                            '치마처럼 보여지지만, 안쪽엔 팬츠로 구성되어 있어 편안하게 입기 좋답니다', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 28, '/upload_img/bottom8_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 28, '/upload_img/bottom8_detail2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 28, '/upload_img/bottom8_detail3.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '포근하면서 쫀득한 면레깅스', 16000, '/upload_img/bottom9.jpg', 
                            '', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 29, '/upload_img/bottom9_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 29, '/upload_img/bottom9_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '펀칭레이스 점프수트', 188000, '/upload_img/bottom10.jpg', 
                            '블리티드와 함께하는 로맨틱 솔루션. 소중하고 의미있는 순간 블리티드 일상 속 특별한 하루를 만들어 보세요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 30, '/upload_img/bottom10_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 30, '/upload_img/bottom10_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '라인쏘굿 롱스커트', 25000, '/upload_img/bottom11.jpg', 
                            '고급스러운 브라운 컬러감으로 다양한 룩에 스타일링 하기 좋은 롱스커트', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 31, '/upload_img/bottom11_detail1.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '심플단정한 린넨미니스커트', 10200, '/upload_img/bottom12.jpg', 
                            '깔끔한 허리선으로 상의와 매치하기 좋으며 안감이있어 안정감있게 착용하실 수 있어요. 후면의 지퍼로 오픈클로징을 도와드려요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 32, '/upload_img/bottom12_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 32, '/upload_img/bottom12_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '아이럽 미니스커트', 16000, '/upload_img/bottom13.jpg', 
                            '고급스러운 브라운 컬러와 잔잔한 셔링허리밴딩! 사랑스러움을 가득 담은 미니스커트', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 33, '/upload_img/bottom13_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 33, '/upload_img/bottom13_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '페미닌호피 미니스커트', 45000, '/upload_img/bottom14.jpg', 
                            '트렌디한 호피 패턴에 여성스러움을 한가득! 히든 바지 안감으로 편안함까지 더해주는 미니스커트', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 34, '/upload_img/bottom14_detail1.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '퓨어무드 펀칭롱스커트', 45000, '/upload_img/bottom15.jpg', 
                            '은은한 세로 스트라이프의 자가드 원단과 펀칭 레이스를 섞어 유니크하면서도 고급스러운 룩을 완성해 주는 롱스커트에요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 35, '/upload_img/bottom15_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 35, '/upload_img/bottom15_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '달링 린넨미니스커트', 12600, '/upload_img/bottom16.jpg', 
                            '통기성 좋은 라미100 원단으로 쾌적한 착용감은 물론 랩디자인으로 트렌디한 무드가 느껴지는 스커트', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 36, '/upload_img/bottom16_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 36, '/upload_img/bottom16_detail2.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '핑크파드 미니스커트', 36000, '/upload_img/bottom17.jpg', 
                            '포인트있는 스타일링을 연출해주는 핑크파드 미니스커트', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 37, '/upload_img/bottom17_detail1.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 37, '/upload_img/bottom17_detail2.jpg');


------------------------------------------------------------------------------------------------------------------------------
commit;