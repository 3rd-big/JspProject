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

/* 샘플 데이터 추가 - 스포츠      // 선정
*/
-------------------------------------------------------------------------------------------------------------------------------


insert into product values (SEQ_SHOP_PRODUCT.nextval, '액션 올웨이즈 숏슬리브', 78000, '/upload_img/LW3DD3S_044628_1.jpg', 
                            '바람이 솔솔 통하는 모달 실크 저지 원단은 속건성에 땀 배출력이 탁월하고 4방 스트레치로 신축성이 뛰어나요', 
                            sysdate, 550, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 1, '/upload_img/LW3DD3S_044628_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 1, '/upload_img/LW3DD3S_044628_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 1, '/upload_img/LW3DD3S_044628_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 1, '/upload_img/LW3DD3S_044628_5.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '트레인 투 비 탱크', 45000, '/upload_img/LW1BTUS_040549_1.jpg', 
                            '레스토레이티브 요가부터 고강도 트레이닝까지, 어떤 운동이든 함께할 수 있는 부드러운 탱크탑으로 모던한 실루엣이 특징이에요', 
                            sysdate, 120, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 2, '/upload_img/LW1BTUS_040549_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 2, '/upload_img/LW1BTUS_040549_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 2, '/upload_img/LW1BTUS_040549_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 2, '/upload_img/LW1BTUS_040549_5.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '어나더 마일 숏슬리브', 93000, '/upload_img/LW1BTUS_040549_1.jpg', 
                            '항균 기능이 더해진 Seriously Light™ Luon 원단은 부드럽고 땀 배출력이 탁월하며 4방 스트레치로 신축성이 뛰어난 Luon™ 원단의 경량 버전이에요', 
                            sysdate, 150, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 3, '/upload_img/LW1BTUS_040549_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 3, '/upload_img/LW1BTUS_040549_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 3, '/upload_img/LW1BTUS_040549_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 3, '/upload_img/LW1BTUS_040549_5.jpg');

insert into product values (SEQ_SHOP_PRODUCT.nextval, '올 유어스 보이프렌드 티', 93000, '/upload_img/LW3EB9S_047687_1.jpg', 
                            '특수 염색 기법을 사용해 제품마다 조금씩 다른 개성의 프린트가 탄생했어요', 
                            sysdate, 757, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 4, '/upload_img/LW3EB9S_047687_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 4, '/upload_img/LW3EB9S_047687_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 4, '/upload_img/LW3EB9S_047687_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 4, '/upload_img/LW3EB9S_047687_5.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '스쿠바 풀오버 후디 *워시', 159000, '/upload_img/LW3CODS_042000_1.jpg', 
                            '캥거루 포켓| 루즈 핏이라 마음껏 움직일 수 있어요|
워싱 처리로 제품마다 조금씩 다른 개성의 프린트가 탄생했어요. 마치 이 세상 유일무이한 당신처럼요', 
                            sysdate, 512, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 5, '/upload_img/LW3CODS_042000_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 5, '/upload_img/LW3CODS_042000_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 5, '/upload_img/LW3CODS_042000_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 5, '/upload_img/LW3CODS_042000_5.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '킵 더 히트 하프 집', 169000, '/upload_img/LW3CJBS_4780_1.jpg', 
                            '울 혼방 소재로 땀 배출력과 보온성이 뛰어난 고성능 베이스 레이어예요. 땀에 젖어도 쾌적하고 따뜻해 혹독한 추위 속 아웃도어 액티비티를 더욱 신나게 즐길 수 있어요', 
                            sysdate, 15, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 6, '/upload_img/LW3CJBS_4780_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 6, '/upload_img/LW3CJBS_4780_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 6, '/upload_img/LW3CJBS_4780_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 6, '/upload_img/LW3CJBS_4780_5.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '레인 체이서 재킷', 278000, '/upload_img/LW4BFRS_0002_1.jpg', 
                            '움직임이 자유로우면서도 스타일은 놓치지 않은 방수 크롭 재킷으로 가벼운 비 정도는 문제없어요. 러닝 또는 바쁜 일상 속 든든한 파트너가 되어줄 거예요
에어홀 사이로 바람이 솔솔 통하고 방수 기능이 있는 글라이드 원단에 심실드 공법을 적용했어요', 
                            sysdate, 150, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 7, '/upload_img/LW4BFRS_0002_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 7, '/upload_img/LW4BFRS_0002_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 7, '/upload_img/LW4BFRS_0002_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 7, '/upload_img/LW4BFRS_0002_5.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '디파인 재킷 *Luon', 159000, '/upload_img/LW4AWKS_030437_1.jpg', 
                            '부드러운 Luon™ 원단은 땀 배출력이 탁월하고 4방 스트레치로 신축성이 뛰어나요
Lycra™ 엘라스테인 원사가 더해져 신축성과 복원력이 탁월해요', 
                            sysdate, 70, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 8, '/upload_img/LW4AWKS_030437_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 8, '/upload_img/LW4AWKS_030437_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 8, '/upload_img/LW4AWKS_030437_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 8, '/upload_img/LW4AWKS_030437_5.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '후드 디파인 재킷 *Nulu', 184000, '/upload_img/LW4BFLS_026950_1.jpg', 
                            '가볍고 버터처럼 부드러운 Nulu™ 원단은 땀 배출력이 탁월하고 4방 스트레치라 신축성이 뛰어나요. 썸홀과 Cuffins™ 커버가 있어 소매가 올라가지 않고 따뜻해요', 
                            sysdate, 13, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 9, '/upload_img/LW4BFLS_026950_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 9, '/upload_img/LW4BFLS_026950_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 9, '/upload_img/LW4BFLS_026950_5.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 9, '/upload_img/LW4BFLS_026950_6.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '스쿠바 풀집 후디', 159000, '/upload_img/LW4AWNS_032493_1.jpg', 
                            '바람이 솔솔 통하는 코튼 플리스 혼방 소재는 감촉이 부드럽고 따뜻해요
팔 아래와 사이드에 결이 들어간 패널이 있어 움직임이 자유로워요', 
                            sysdate, 15, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 10, '/upload_img/LW4AWNS_032493_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 10, '/upload_img/LW4AWNS_032493_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 10, '/upload_img/LW4AWNS_032493_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 10, '/upload_img/LW4AWNS_032493_5.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '팩 잇 업 재킷', 184000, '/upload_img/LW4AVRS_034135_1.jpg', 
                            '변덕스러운 날씨가 예상되는 날은 DWR 처리로 가벼운 비 정도는 걱정 없이 맞을 수 있는 재킷과 함께 해보세요. 참, 패커블 디자인이라 비가 그치면 작게 접어 가방에 넣을 수 있어요', 
                            sysdate, 67, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 11, '/upload_img/LW4AVRS_034135_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 11, '/upload_img/LW4AVRS_034135_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 11, '/upload_img/LW4AVRS_034135_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 11, '/upload_img/LW4AVRS_034135_5.jpg');

insert into product values (SEQ_SHOP_PRODUCT.nextval, '러브 탱크 *플리츠', 61000, '/upload_img/LW1BEJS_033068_1.jpg', 
                            '바람이 솔솔 통하는 코튼 소재로 정말 부드럽고 신축성이 탁월해요
Lycra™ 엘라스테인 원사가 더해져 신축성과 복원력이 탁월해요', 
                            sysdate, 67, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 12, '/upload_img/LW1BEJS_033068_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 12, '/upload_img/LW1BEJS_033068_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 12, '/upload_img/LW1BEJS_033068_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 12, '/upload_img/LW1BEJS_033068_5.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '쇼 유어 엣지 머슬 탱크', 61000, '/upload_img/LW1BXMS_0002_1.jpg', 
                            '커버력이 높은 탱크탑으로 어디든 함께하고 싶을 거예요 
감촉이 부드럽고 바람이 솔솔 통하는 코튼 원단을 사용했어요', 
                            sysdate, 10, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 13, '/upload_img/LW1BXMS_0002_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 13, '/upload_img/LW1BXMS_0002_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 13, '/upload_img/LW1BXMS_0002_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 13, '/upload_img/LW1BXMS_0002_5.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '퍼펙틀리 오버사이즈드 크루', 159000, '/upload_img/LW3CQWS_035521_1.jpg', 
                            '운동 전후 따스한 온기를 지켜줄 클래식 크루넥 스웻셔츠예요
감촉이 부드럽고 바람이 솔솔 통하는 코튼 테리 원단을 사용했어요', 
                            sysdate, 36, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 14, '/upload_img/LW3CQWS_035521_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 14, '/upload_img/LW3CQWS_035521_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 14, '/upload_img/LW3CQWS_035521_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 14, '/upload_img/LW3CQWS_035521_5.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '백 인 액션 롱슬리브', 78000, '/upload_img/LW3CE0S_0001_1.jpg', 
                            '라운드 처리한 밑단이 엉덩이를 가려주는 롱슬리브 탑이에요. 감촉이 정말 부드럽고 신축성이 탁월해 오늘도 그리고 내일도 입고 싶을 거예요', 
                            sysdate, 24, 'top');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 15, '/upload_img/LW3CE0S_0001_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 15, '/upload_img/LW3CE0S_0001_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 15, '/upload_img/LW3CE0S_0001_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 15, '/upload_img/LW3CE0S_0001_5.jpg');


------------------------------------------------------------------------------------------------------------------------------




------------------------------------------------------------------------------------------------------------------------bottom
insert into product values (SEQ_SHOP_PRODUCT.nextval, '프랙티컬 플레이 쇼츠 3.5"', 93000, '/upload_img/LW7BF4S_036763_1.jpg', 
                            '벼우면서도 모양이 흐트러지지 않는 속건성 원단으로 통기성이 탁월하고 4방 스트레치로 신축성이 뛰어나요|미디엄 라이즈, 인심길이 9cm (3.5”)', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 16, '/upload_img/LW7BF4S_036763_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 16, '/upload_img/LW7BF4S_036763_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 16, '/upload_img/LW7BF4S_036763_4.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 16, '/upload_img/LW7BF4S_036763_5.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '트랙 댓 MR 쇼츠 5" *라이너', 78000, '/upload_img/LW7AVKS_0002_1.jpg', 
                            '장거리 러닝에 필요한 기능성 디테일을 갖춘 쇼츠예요. 마음이 이끄는 곳으로 달려보세요
스위프트 원단은 땀 배출력이 탁월하고 (2-way) 스트레치라 신축성이 뛰어나요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 17, '/upload_img/LW7AVKS_0002_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 17, '/upload_img/LW7AVKS_0002_3.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '스피드 업 MR 쇼츠 4" *라이너', 78000, '/upload_img/LW7AVNT_035167_1.jpg', 
                            '가벼운 스위프트 원단은 땀 배출력이 탁월하고 4방 스트레치라 신축성이 뛰어나요
Lycra™ 엘라스테인 원사가 더해진 라이너는 가볍고 땀 배출력이 탁월하며 속건성이에요', 
                           sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 18, '/upload_img/LW7AVNT_035167_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 18, '/upload_img/LW7AVNT_035167_3.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '킵 무빙 팬츠', 29000, '/upload_img/LW5CWDS_0001_1.jpg', 
                            '시원하고 부드러운 Full-On™ Luxtreme™ 원단은 땀 배출력이 탁월하고 4방 스트레치라 신축성이 뛰어나요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 19, '/upload_img/LW5CWDS_0001_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 19, '/upload_img/LW5CWDS_0001_3.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '패스트 앤 프리 HR 타이츠 25" *리플렉티브', 184000, '/upload_img/LW5BUGS_034135_1.jpg', 
                            '속건성에 땀 배출력이 탁월한 Nulux™ 원단은 가벼우면서도 커버력이 좋아요
Lycra™ 엘라스테인 원사가 더해져 신축성과 복원력이 탁월해요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 20, '/upload_img/LW5BUGS_034135_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 20, '/upload_img/LW5BUGS_034135_7.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '트레인 타임즈 7/8 팬츠 *아시아', 138000, '/upload_img/LW5CFEA_0002_1.jpg', 
                            '유산소부터 근력 운동까지 함께할 수 있는 하이라이즈 타이츠예요. 메쉬 패널을 더해 바람이 솔솔 통하고 웨이스트 밴드가 몸에 밀착되어 흘러내리거나 조이지 않아요', 
                           sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 21, '/upload_img/LW5CFEA_0002_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 21, '/upload_img/LW5CFEA_0002_3.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 21, '/upload_img/LW5CFEA_0002_4.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '얼라인 HR 팬츠 25"', 65000, '/upload_img/LW5BYXS_044947_1.jpg', 
                            '가벼운 하이라이즈 팬츠로 거슬림은 최소화하고 편안함은 최대화했어요. 물 흐르듯 자연스럽게 요가 동작을 이어가 보세요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 22, '/upload_img/LW5BYXS_044947_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 22, '/upload_img/LW5BYXS_044947_3.jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '트레인 타임즈 7/8 팬츠', 138000, '/upload_img/LW5AMOS_0001_1.jpg', 
                            '트레이닝부터 부트 캠프까지 모두 커버하는 활용도 높은 타이츠예요. 웨이스트 밴드가 몸에 밀착되어 흘러내리거나 조이지 않아요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 23, '/upload_img/LW5AMOS_0001_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 23, '/upload_img/LW5AMOS_0001_3jpg');


insert into product values (SEQ_SHOP_PRODUCT.nextval, '온 더 플라이 조거 *Luxtreme', 169000, '/upload_img/LW5CUWS_024921_1.jpg', 
                            '온 더 플라이 컬렉션: 편안하면서도 세련된 스타일의 조거예요. 신비롭고 아름다운 자연을 마음에 담는 여행 파트너로 또는 데일리 오피스웨어로 제격이에요', 
                            sysdate, 250, 'bottom');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 24, '/upload_img/LW5CUWS_024921_2.jpg');
insert into product_image values (SEQ_PRODUCT_IMAGE.nextval, 24, '/upload_img/LW5CUWS_024921_3.jpg');



-------------------------------------------------------------------------------------------------------------------------------------------------------
commit;
