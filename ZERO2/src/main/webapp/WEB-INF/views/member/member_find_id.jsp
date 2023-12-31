<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jtsage-datebox-bootstrap4@5.3.3/jtsage-datebox.min.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath }/resources/css/default.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/css/sidebar.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/css/button.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>ZERO</title>
<style>
	.header {
    box-shadow: 0 1px 0 0 rgba(0,0,0,.1)
}

.content {
    margin-left: auto;
    margin-right: auto;
    max-width: 1280px
}

.lg .content {
    padding-left: 40px;
    padding-right: 40px
}

.content.lg .input_delete,.content.md .input_delete {
    display: none
}

.content.mo,.content.sm {
    padding: 0 24px
}

.content.mo .help_area,.content.sm .help_area {
    padding: 19px 0 80px;
    width: 100%
}

.content.mo .help_title,.content.sm .help_title {
    padding-bottom: 0;
    border-bottom-width: 0;
    text-align: left;
    font-size: 24px;
    line-height: 36px;
    letter-spacing: -.36px
}

.content.mo .help_title.success,.content.sm .help_title.success {
    padding-top: 0;
    padding-bottom: 30px;
    line-height: 30px;
    border-bottom-width: 2px
}

.content.mo .help_title.success span,.content.sm .help_title.success span {
    display: block
}

.content.mo .help_notice,.content.sm .help_notice {
    padding: 14px 0 39px
}

.help .content.mo .input_box+.input_box,.help .content.sm .input_box+.input_box {
    margin-top: 44px
}

.content.mo .help_btn_box,.content.sm .help_btn_box {
    padding-top: 36px
}

.content.mo .success_notice,.content.sm .success_notice {
    padding-top: 21px;
    text-align: left
}

.content.mo .success_btn_box,.content.sm .success_btn_box {
    padding-top: 51px;
    display: block;
    text-align: center;
    font-size: 0
}

.content.mo .success_btn_box .btn,.content.sm .success_btn_box .btn {
    flex: none;
    padding: 0 10px;
    width: 130px;
    height: 42px;
    line-height: 42px;
    border-radius: 8px
}

.content.mo .temporary_notice,.content.sm .temporary_notice {
    padding-top: 79px
}

.content.mo .temporary_btn_box,.content.sm .temporary_btn_box {
    padding-top: 20px
}

.content.mo .temporary_btn_box .btn,.content.sm .temporary_btn_box .btn {
    min-width: 130px;
    height: 42px;
    line-height: 42px;
    border-radius: 8px
}

.content.sm {
    padding-left: 16px;
    padding-right: 16px
}

.help_area {
    margin: 0 auto;
    padding: 60px 0 160px;
    width: 400px
}

.help_title {
    padding-bottom: 41px;
    text-align: center;
    font-size: 32px;
    letter-spacing: -.48px;
    color: #000;
    border-bottom: 2px solid #000
}

.help_title.success {
    padding-top: 40px;
    font-size: 24px;
    letter-spacing: -.36px
}

.help_notice {
    padding: 40px 0 30px
}

.help_notice .notice_txt {
    font-size: 14px;
    letter-spacing: -.21px
}

.help_btn_box {
    padding-top: 44px
}

.success_notice {
    padding-top: 30px;
    text-align: center
}

.success_notice .notice_title {
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.5)
}

.success_notice .notice_txt {
    padding-top: 8px;
    font-size: 18px;
    letter-spacing: -.09px;
    font-weight: 700
}

.success_btn_box {
    padding-top: 56px;
    display: flex
}

.success_btn_box .btn {
    flex: 1;
    height: 52px;
    line-height: 52px;
    border-radius: 12px
}

.success_btn_box .btn+.btn {
    margin-left: 8px
}

.temporary_notice {
    padding-top: 40px;
    text-align: center
}

.temporary_notice .notice_txt {
    font-size: 15px;
    letter-spacing: -.15px
}

.temporary_btn_box {
    padding-top: 22px;
    text-align: center
}

.temporary_btn_box .btn {
    min-width: 200px;
    height: 52px;
    line-height: 52px;
    border-radius: 12px
}

.btn_top {
    z-index: 0;
    position: fixed;
    bottom: 24px;
    right: 24px;
    width: 44px;
    height: 48px;
    padding-top: 4px;
    border-radius: 30px;
    box-shadow: 0 2px 8px 0 rgba(0,0,0,.1);
    background-color: #fff
}

.btn_top.mo,.btn_top.sm {
    right: 20px;
    bottom: 20px
}

.ul_tab.inline {
    height: 44px;
    padding-left: 16px;
    padding-right: 16px;
    width: 100%;
    display: flex;
    flex-wrap: nowrap;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
    scrollbar-width: none;
    -ms-overflow-style: none;
    overflow-y: hidden
}

html[data-css-overflow-bug=true] .ul_tab.inline:after {
    content: "";
    padding-right: 16px
}

.ul_tab.inline>[data-v-4b28b31a] {
    flex: 0 0 auto
}

.ul_tab.inline[data-v-4b28b31a]::-webkit-scrollbar {
    display: none;
    width: 0;
    height: 0;
    background: transparent
}

.lg .ul_tab.inline {
    padding-left: 40px;
    padding-right: 40px
}

.ul_tab.justified {
    display: flex;
    height: 45px;
    padding-left: 0;
    padding-right: 0
}

.ul_tab.inline .li_tab {
    display: inline-flex
}

.ul_tab.inline .li_tab+.li_tab {
    margin-left: 27px
}

.ul_tab.justified .li_tab {
    flex: 1
}

.tab {
    position: relative;
    color: #222;
    cursor: pointer;
    border-bottom: 2px solid #222
}

.tab.active {
    font-weight: 700
}

.tab:not(.active) {
    border-bottom-color: transparent!important
}

.ul_tab.inline .tab {
    padding-top: 15px;
    padding-bottom: 6px;
    display: inline-flex;
    height: 100%
}

.ul_tab.justified .tab {
    display: flex;
    height: 100%;
    align-items: center;
    justify-content: center
}

.tab_name {
    position: relative;
    line-height: 20px;
    background-color: #fff
}

.updated .tab_name:after {
    position: absolute;
    top: 0;
    right: -7px;
    width: 5px;
    height: 5px;
    border-radius: 5px;
    background-color: #ef6253;
    content: ""
}

.ul_tab.inline .tab_name {
    font-size: 16px;
    line-height: 1.25
}

.ul_tab.justified .tab_name {
    font-size: 14px;
    line-height: 1.2142857143
}

.lg .notification_tabs,.md .notification_tabs {
    padding-left: 24px!important;
    padding-right: 24px!important
}

.bubble .filter_chip {
    padding: 7px 16px;
    font-size: 14px;
    letter-spacing: -.21px;
    line-height: 17px;
    display: flex;
    align-items: center;
    color: rgba(34,34,34,.8);
    background: #fff;
    border: 1px solid #f0f0f0;
    border-radius: 30px;
    cursor: pointer
}

.bubble .filter_chip.checked {
    font-size: 14px;
    letter-spacing: -.21px;
    font-weight: 600;
    color: #fff;
    background: #222;
    border-color: transparent
}

.list .filter_chip {
    padding: 18px 0 16px;
    font-size: 15px;
    line-height: 18px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    color: #222
}

.list .filter_chip.checked {
    font-size: 15px;
    font-weight: 700
}

.list .filter_chip.checked:after {
    content: "";
    margin-left: 2px;
    display: inline-flex;
    width: 20px;
    height: 20px;
    background: url(data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjAgMjAiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTMuNSA5LjY3NUw4LjI4IDE1LjUgMTYuNSAzIiBzdHJva2U9IiMyMjIiIHN0cm9rZS13aWR0aD0iMiIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPjwvc3ZnPg==) 0 0 no-repeat
}

.input+.filter_chip,.input+.filter_chip {
    cursor: not-allowed
}

.filter_chip_group.bubble {
    position: relative;
    display: flex;
    grid-gap: 16px 8px;
    gap: 16px 8px;
    flex-wrap: wrap
}

.filter_chip_group.bubble.horizontal {
    width: 100%;
    display: flex;
    flex-wrap: nowrap;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
    scrollbar-width: none;
    -ms-overflow-style: none
}

html[data-css-overflow-bug=true] .filter_chip_group.bubble.horizontal:after {
    content: "";
    padding-right: 16px
}

.filter_chip_group.bubble.horizontal>[data-v-63b0a564] {
    flex: 0 0 auto
}

.filter_chip_group.bubble.horizontal::-webkit-scrollbar {
    display: none;
    width: 0;
    height: 0;
    background: transparent
}

.chip_group {
    padding: 12px 16px
}

.lg .chip_group,.md .chip_group {
    padding: 16px 24px
}

.chip_group.bubble {
    grid-gap: 12px 6px;
    gap: 12px 6px
}

.content_image .image,.content_image .image img {
    border-radius: 10px
}

.picture {
    display: flex;
    border: none
}

.image {
    -o-object-fit: cover;
    object-fit: cover;
    image-rendering: auto
}

.image.full_width {
    width: 100%;
    height: 100%
}

.image.auto_width {
    width: auto
}

.image.center {
    margin: 0 auto
}

.btn.btn_follow {
    min-width: 140px;
    margin-left: auto;
    flex-shrink: 0;
    padding: 0 10px;
    height: 42px
}

.btn.btn_follow.solid,.btn.btn_follow {
    line-height: 42px
}

.btn.btn_follow.small {
    min-width: 82px;
    height: 30px;
    line-height: 28px
}

.btn.btn_follow.small.solid {
    line-height: 30px
}

@media(max-width: 374px) {
    .btn.btn_follow {
        width:unset;
        min-width: unset;
        padding: 0 15px
    }
}

.btn {
    display: inline-flex;
    cursor: pointer;
    align-items: center;
    justify-content: center;
    vertical-align: middle;
    text-align: center;
    color: rgba(34,34,34,.8);
    background-color: #fff
}

.btn.btn_edit {
    position: absolute;
    top: 50%;
    margin-top: -17px;
    right: 0
}

.btn.btn_zipcode {
    position: absolute;
    right: 0;
    bottom: 8px
}

.profile_group .btn.btn_zipcode {
    padding: 0 12px 0 11px;
    margin-top: -20px
}

.btn.btn_login_apple,.btn.btn_login_naver {
    position: relative;
    color: #222;
    border-color: #ebebeb
}

.btn.btn_dropdown {
    position: absolute;
    top: 50%;
    right: 0;
    margin-top: -12px;
    line-height: 0
}

.btn.btn_update {
    width: 100%;
    font-weight: 600;
    color: #fff;
    background-color: #ff8824;
    letter-spacing: -.15px
}

.btn.btn_buy_exclusive {
    border-radius: 10px
}

.full {
    width: 100%;
    font-size: 16px;
    letter-spacing: -.16px;
    font-weight: 700;
    height: 52px;
    border-radius: 12px
}

.full.medium {
    font-weight: 400
}

.xlarge {
    font-size: 18px;
    letter-spacing: -.09px;
    font-weight: 700;
    height: 60px
}

.large {
    padding: 0 25px;
    height: 52px;
    border-radius: 14px;
    font-size: 16px;
    letter-spacing: -.16px
}

.medium {
    padding: 0 18px;
    height: 42px;
    border-radius: 12px;
    font-size: 14px;
    letter-spacing: -.14px
}

.small {
    padding: 0 14px;
    height: 34px;
    border-radius: 10px
}

.small,.xsmall {
    font-size: 12px;
    letter-spacing: -.06px
}

.xsmall {
    padding: 0 8px;
    font-weight: 600;
    letter-spacing: 0;
    height: 26px;
    border-radius: 6px
}

.outline {
    border: 1px solid #d3d3d3
}

.outline:active {
    border-color: #d3d3d3;
    background-color: #f4f4f4;
    color: rgba(34,34,34,.8)
}

.outlinedark {
    border: 1px solid #222
}

.outlinegrey {
    border: 1px solid #d3d3d3;
    color: rgba(34,34,34,.8)
}

.outlinegrey:active {
    border-color: #ebebeb;
    background-color: #f4f4f4;
    color: rgba(34,34,34,.5)
}

.outlinegrey.solid {
    border: 0;
    color: #fafafa
}

.outline.disabled,.outline:disabled,.outlinegrey.disabled,.outlinegrey:disabled {
    border-color: #ebebeb;
    color: rgba(34,34,34,.3);
    cursor: default
}

.solid {
    font-weight: 700;
    color: #fff;
    background-color: #222
}

.solid:active {
    background-color: rgba(34,34,34,.8);
    color: hsla(0,0%,100%,.8)
}

.solid.disabled,.solid:disabled {
    background-color: #ebebeb;
    color: #fff;
    cursor: default
}

.solid.buy {
    background-color: #ef6253
}

.solid.brand {
    background-color: #7c72ee
}

.solid.sell {
    background-color: #41b979
}

.solid.sell.disabled,.solid.sell:disabled {
    background-color: #ebebeb;
    color: #fff;
    cursor: default
}

.solid.hold {
    background-color: #ff8824
}

.instant_group .solid {
    color: #fafafa
}

.mark {
    padding: 0 5px;
    font-size: 11px;
    color: rgba(34,34,34,.8);
    height: 18px;
    border-radius: 10px;
    background-color: #ebebeb
}

.block {
    display: flex;
    width: 100%
}

.outline_greylight {
    color: #222;
    border: 1px solid #ebebeb
}

.dark {
    color: #fff;
    background-color: #222
}

.greymedium {
    color: #fff;
    background-color: #d3d3d3
}

.medium_2 {
    height: 44px;
    font-size: 14px;
    border-radius: 10px
}

.notification_item {
    display: flex
}

.notification_item>.icon {
    margin-right: 12px
}

.notification_item>.body {
    flex: 1
}

.notification_item>.extra {
    margin-left: 28px
}

.title {
    font-size: 15px;
    letter-spacing: -.15px
}

.date_created,.description {
    display: block;
    margin-top: 4px;
    font-size: 14px;
    letter-spacing: -.21px;
    word-break: break-all;
    white-space: pre-line
}

.date_created {
    color: rgba(34,34,34,.5)
}

.icon_image {
    width: 46px;
    height: 46px;
    border-radius: 50%
}

.extra_image,.icon_image {
    overflow: hidden;
    background: #ebebeb
}

.extra_image {
    width: 62px;
    height: 62px;
    border-radius: 10px
}

.notification_list {
    overscroll-behavior: contain;
    overflow: auto;
    padding-left: 16px;
    padding-right: 16px
}

.lg .notification_list,.md .notification_list {
    padding-left: 24px;
    padding-right: 24px
}

.help_text {
    margin-top: 24px;
    margin-bottom: 24px;
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.5)
}

.notification_list_empty {
    display: flex;
    align-items: center;
    flex-direction: column;
    padding-top: 160px
}

.notification_list_empty>.list_empty_title {
    margin-top: 16px;
    font-size: 16px;
    letter-spacing: -.16px;
    font-weight: 600
}

.notification_list_empty>.list_empty_description {
    margin-top: 12px;
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.5)
}

.notification_group_title {
    margin-top: 24px;
    margin-bottom: 16px;
    font-size: 16px;
    letter-spacing: -.16px
}

.notification_list_ul>li>.notification_list_item {
    padding-bottom: 20px;
    border-bottom: 1px solid #f0f0f0
}

.notification_list_ul>li:not(:first-child)>.notification_list_item {
    padding-top: 20px
}

.layer {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(34,34,34,.5);
    z-index: 1010
}

.in_app .layer .layer_content {
    max-height: 100%!important
}

.layer.scrollable .layer_content {
    overflow: auto
}

.layer.flex>.layer_container {
    display: flex;
    flex-direction: column
}

.layer.flex>.layer_container>.layer_content {
    flex: 1;
    display: flex;
    flex-direction: column;
    overflow: auto
}

.layer.flex>.layer_container>.layer_content>.layer_btn {
    display: flex!important
}

.mo .layer.flex>.layer_container>.layer_content>.layer_btn,.sm .layer.flex>.layer_container>.layer_content>.layer_btn {
    padding: 16px
}

.layer.flex>.layer_container>.layer_content>.layer_btn>.btn {
    flex: 1
}

.layer.mo.full .layer_container,.layer.mo_ls.full .layer_container,.layer.sm.full .layer_container {
    height: 100%;
    border-radius: 0
}

.layer.mo.close_is_back .btn_layer_close,.layer.mo_ls.close_is_back .btn_layer_close,.layer.sm.close_is_back .btn_layer_close {
    left: 16px;
    right: auto;
    width: 24px;
    height: 24px;
    background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggc3Ryb2tlPSIjMDAwIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Ik0yMSAxMkgzbTcgN2wtNy03IDctNyIvPjwvc3ZnPg==) no-repeat
}

.layer.mo.close_is_back .btn_layer_close>.icon,.layer.mo_ls.close_is_back .btn_layer_close>.icon,.layer.sm.close_is_back .btn_layer_close>.icon {
    display: none
}

.layer.mo .layer_container,.layer.mo_ls .layer_container,.layer.sm .layer_container {
    top: auto;
    left: 0;
    right: 0;
    bottom: 0;
    -webkit-transform: none;
    transform: none;
    width: 100%;
    border-radius: 16px 16px 0 0
}

.layer.mo .layer_btn,.layer.mo_ls .layer_btn,.layer.sm .layer_btn {
    display: none
}

.layer_container {
    overflow: hidden;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
    background-color: #fff;
    width: 448px;
    border-radius: 16px;
    box-shadow: 0 4px 10px 0 rgba(0,0,0,.1)
}

.layer_header .title {
    line-height: 22px;
    padding: 18px 50px 20px;
    min-height: 60px;
    font-size: 18px;
    letter-spacing: -.27px;
    font-weight: 700;
    letter-spacing: -.15px;
    color: #000;
    text-align: center;
    background-color: #fff
}

.layer_btn {
    padding: 24px 32px 32px;
    display: flex;
    justify-content: center
}

.layer_btn .btn {
    width: 120px
}

.layer_btn .btn+.btn {
    margin-left: 8px
}

.btn_layer_close {
    position: absolute;
    top: 18px;
    right: 20px;
    cursor: pointer
}

.layer_alert {
    text-align: center;
    z-index: 1011
}

.layer_alert .layer_container {
    width: 360px
}

.layer_alert.wide .layer_container {
    width: 390px
}

.layer_alert .layer_header .title {
    padding: 32px 16px 0;
    min-height: 46px
}

.layer_alert .alert_box {
    padding: 8px 32px 0
}

.layer_alert .alert_box.high {
    padding-top: 32px
}

.layer_alert .alert_desc {
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.8)
}

.layer_alert .btn_layer_close {
    display: none
}

.layer_alert.mo .layer_container,.layer_alert.sm .layer_container {
    top: 50%;
    left: 50%;
    right: auto;
    bottom: auto;
    -webkit-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
    width: 80%;
    max-width: 300px;
    border-radius: 16px
}

.layer_alert.mo .layer_header .title,.layer_alert.sm .layer_header .title {
    padding: 24px 16px 0
}

.layer_alert.mo .alert_box,.layer_alert.sm .alert_box {
    padding-left: 16px;
    padding-right: 16px
}

.layer_alert.mo .layer_btn,.layer_alert.sm .layer_btn {
    display: block;
    padding: 24px 16px
}

@media(max-width: 915px) {
    .layer_container {
        max-height:100%
    }
}

@media(max-width: 374px) {
    .layer_alert.sm .layer_btn .btn {
        padding:0 10px;
        width: 100px;
        white-space: nowrap
    }
}

.layer_order_price_confirm .layer_container {
    width: 400px;
    text-align: center
}

.layer_withdrawal .layer_container {
    width: auto;
    min-width: 360px
}

.layer_withdrawal .layer_header .title {
    padding-top: 40px;
    line-height: normal;
    font-size: 20px;
    letter-spacing: -.3px
}

.layer_withdrawal .layer_content {
    padding: 0 32px 40px
}

.layer_deferred .layer_container {
    width: auto;
    min-width: 360px;
    max-width: 500px;
    padding-bottom: 40px
}

.layer_deferred .layer_content {
    padding: 0 32px;
    height: 600px;
    overflow: scroll
}

.layer_deferred.mo .layer_container,.layer_deferred.sm .layer_container {
    top: 0;
    border-radius: 0;
    padding-bottom: 0;
    max-width: unset
}

.layer_deferred.mo .layer_content,.layer_deferred.sm .layer_content {
    padding: 0;
    height: calc(100% - 60px)
}

.layer_deferred.mo .btn_layer_close,.layer_deferred.sm .btn_layer_close {
    left: 16px;
    right: auto;
    width: 24px;
    height: 24px;
    background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggc3Ryb2tlPSIjMDAwIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Ik0yMSAxMkgzbTcgN2wtNy03IDctNyIvPjwvc3ZnPg==) no-repeat
}

.layer_deferred.mo .ico-close,.layer_deferred.sm .ico-close {
    display: none
}

.layer_warning_price .layer_container {
    width: 800px
}

.layer_delivery .input_box:first-of-type {
    padding-top: 0
}

.mo .layer_delivery .layer_header .title,.sm .layer_delivery .layer_header .title {
    padding-top: 17px;
    font-size: 20px;
    letter-spacing: -.3px;
    font-weight: 700;
    line-height: 28px
}

.mo .layer_delivery .layer_content,.sm .layer_delivery .layer_content {
    padding: 0 20px
}

.layer_design_confirm {
    text-align: center
}

.layer_design_confirm .layer_container {
    width: 360px
}

.layer_design_confirm .layer_content {
    padding: 0
}

.layer_design_confirm .layer_header .title {
    padding: 32px 16px 0;
    min-height: 46px
}

.layer_design_confirm .alert_box {
    padding: 8px 32px 0
}

.layer_design_confirm .alert_desc {
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.8)
}

.layer_design_confirm .btn_layer_close {
    display: none
}

.layer_design_confirm.mo .layer_container,.layer_design_confirm.sm .layer_container {
    top: 50%;
    left: 50%;
    right: auto;
    bottom: auto;
    -webkit-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
    width: 80%;
    max-width: 280px;
    border-radius: 16px
}

.layer_design_confirm.mo .layer_header .title,.layer_design_confirm.sm .layer_header .title {
    padding: 24px 16px 0
}

.layer_design_confirm.mo .alert_box,.layer_design_confirm.sm .alert_box {
    padding-left: 16px;
    padding-right: 16px
}

.layer_design_confirm.mo .layer_btn,.layer_design_confirm.sm .layer_btn {
    display: block;
    padding: 24px 16px
}

.layer_interest .layer_container {
    width: 440px
}

.layer_point .layer_container {
    width: 444px
}

.layer_appdown .layer_container {
    overflow: hidden;
    width: 424px
}

.layer_agreement .layer_container,.layer_auth_policy .layer_container,.layer_faq .layer_container,.layer_order_notice .layer_container,.layer_privacy .layer_container {
    width: 580px
}

.layer_agreement .layer_content,.layer_auth_policy .layer_content,.layer_faq .layer_content,.layer_order_notice .layer_content,.layer_privacy .layer_content {
    max-height: 528px;
    overflow-y: auto;
    padding: 0 32px;
    margin-bottom: 32px
}

.layer_agreement.md .layer_container,.layer_agreement.mo .layer_container,.layer_agreement.sm .layer_container,.layer_auth_policy.md .layer_container,.layer_auth_policy.mo .layer_container,.layer_auth_policy.sm .layer_container,.layer_faq.md .layer_container,.layer_faq.mo .layer_container,.layer_faq.sm .layer_container,.layer_order_notice.md .layer_container,.layer_order_notice.mo .layer_container,.layer_order_notice.sm .layer_container,.layer_privacy.md .layer_container,.layer_privacy.mo .layer_container,.layer_privacy.sm .layer_container {
    height: calc(100% - 60px)
}

.layer_agreement.md .layer_header .title,.layer_agreement.mo .layer_header .title,.layer_agreement.sm .layer_header .title,.layer_auth_policy.md .layer_header .title,.layer_auth_policy.mo .layer_header .title,.layer_auth_policy.sm .layer_header .title,.layer_faq.md .layer_header .title,.layer_faq.mo .layer_header .title,.layer_faq.sm .layer_header .title,.layer_order_notice.md .layer_header .title,.layer_order_notice.mo .layer_header .title,.layer_order_notice.sm .layer_header .title,.layer_privacy.md .layer_header .title,.layer_privacy.mo .layer_header .title,.layer_privacy.sm .layer_header .title {
    height: 60px
}

.layer_agreement.md .layer_content,.layer_agreement.mo .layer_content,.layer_agreement.sm .layer_content,.layer_auth_policy.md .layer_content,.layer_auth_policy.mo .layer_content,.layer_auth_policy.sm .layer_content,.layer_faq.md .layer_content,.layer_faq.mo .layer_content,.layer_faq.sm .layer_content,.layer_order_notice.md .layer_content,.layer_order_notice.mo .layer_content,.layer_order_notice.sm .layer_content,.layer_privacy.md .layer_content,.layer_privacy.mo .layer_content,.layer_privacy.sm .layer_content {
    max-height: calc(100% - 86px);
    padding: 0 20px;
    margin-bottom: 26px
}

.layer_order_notice .layer_content {
    padding: 0 16px
}

.layer_order_notice.mo .layer_content,.layer_order_notice.sm .layer_content {
    padding: 0
}

.layer_delivery .layer_container {
    width: 520px
}

.layer_delivery .layer_btn {
    padding-top: 32px
}

.mo .layer_delivery .layer_container,.sm .layer_delivery .layer_container {
    top: 0;
    border-radius: 0
}

.mo .layer_delivery .layer_content,.sm .layer_delivery .layer_content {
    overflow-y: auto;
    max-height: calc(100% - 60px)
}

.mo .layer_delivery .layer_btn,.sm .layer_delivery .layer_btn {
    display: block;
    padding: 32px 20px 40px
}

.mo .layer_delivery .btn_layer_close,.sm .layer_delivery .btn_layer_close {
    right: auto;
    left: 20px
}

.layer_delivery .input_box {
    padding-top: 16px
}

.layer_product_notice .layer_container {
    width: 580px
}

.layer_product_notice .layer_content {
    height: 528px;
    overflow-y: auto;
    padding: 0 16px;
    margin-bottom: 32px
}

.layer_product_notice.mo .layer_container,.layer_product_notice.sm .layer_container {
    height: calc(100% - 60px)
}

.layer_product_notice.mo .layer_header,.layer_product_notice.sm .layer_header {
    border-bottom: 1px solid #ebebeb
}

.layer_product_notice.mo .layer_header .title,.layer_product_notice.sm .layer_header .title {
    height: 60px
}

.layer_product_notice.mo .layer_content,.layer_product_notice.sm .layer_content {
    height: calc(100% - 86px);
    padding: 0 4px;
    margin-bottom: 26px
}

.layer_detail_size_select .subtitle {
    display: block;
    font-size: 13px;
    letter-spacing: -.07px;
    font-weight: 400;
    color: rgba(34,34,34,.5)
}

.layer_sales_types.lg,.layer_sales_types.md,.layer_size_list.lg,.layer_size_list.md {
    position: absolute;
    background-color: #fff
}

.layer_sales_types.lg .layer_container,.layer_sales_types.md .layer_container,.layer_size_list.lg .layer_container,.layer_size_list.md .layer_container {
    position: relative;
    top: auto;
    left: auto;
    -webkit-transform: none;
    transform: none;
    width: 176px;
    border-radius: 0;
    box-shadow: none
}

.layer_sales_types.lg .layer_content,.layer_sales_types.md .layer_content,.layer_size_list.lg .layer_content,.layer_size_list.md .layer_content {
    border: 1px solid #d3d3d3;
    border-radius: 10px
}

.layer_sales_types.lg .btn_layer_close,.layer_sales_types.lg .layer_header,.layer_sales_types.md .btn_layer_close,.layer_sales_types.md .layer_header,.layer_size_list.lg .btn_layer_close,.layer_size_list.lg .layer_header,.layer_size_list.md .btn_layer_close,.layer_size_list.md .layer_header {
    display: none
}

.lg .size_select_wrap .layer_size_list,.md .size_select_wrap .layer_size_list {
    top: 48px;
    left: 0;
    right: auto;
    bottom: auto
}

.sales_filter .layer_sales_types.lg,.sales_filter .layer_sales_types.md,.sales_filter .layer_size_list.lg,.sales_filter .layer_size_list.md {
    top: 30px;
    left: auto;
    right: 0;
    bottom: auto;
    z-index: 1
}

.layer_market_price .layer_size_list.lg,.layer_market_price .layer_size_list.md {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: transparent
}

.layer_market_price .layer_size_list.lg .layer_container,.layer_market_price .layer_size_list.md .layer_container {
    position: relative;
    top: 145px;
    left: 120px;
    box-shadow: none
}

.layer_market_price>.layer_container {
    width: 480px;
    height: 525px
}

.layer_market_price>.layer_container .layer_header {
    flex: none
}

.layer_market_price>.layer_container .layer_content {
    display: flex;
    flex-direction: column;
    height: calc(100% - 60px)
}

.layer_market_price>.layer_container .layer_content .buy_product {
    flex: none
}

.layer_market_price>.layer_container .layer_content .tab_info {
    flex: 1;
    position: relative
}

.layer_market_price>.layer_container .layer_content .tab_area {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    display: flex;
    flex-direction: column
}

.layer_market_price>.layer_container .layer_content .tab_area .tab_list {
    flex: none
}

.layer_market_price>.layer_container .layer_content .tab_area .tab_content {
    flex: 1
}

.layer_market_price>.layer_container .layer_content .tab_area .price_table {
    height: 100%
}

.layer_market_price>.layer_container .layer_content .tab_area .market_price_table {
    position: relative;
    height: 100%
}

.layer_market_price>.layer_container .layer_content .tab_area .price_body {
    max-height: none;
    position: absolute;
    top: 30px;
    left: 0;
    bottom: 0;
    right: 0
}

.layer_market_price.mo>.layer_container,.layer_market_price.sm>.layer_container {
    top: 0;
    border-radius: 0;
    height: 100%
}

.layer_shipping_info>.layer_container {
    width: 684px
}

.layer_shipping_info>.layer_container>.layer_content {
    padding: 0 32px 32px
}

.mo .layer_shipping_info>.layer_container,.sm .layer_shipping_info>.layer_container {
    top: 0;
    border-radius: 0
}

.mo .layer_shipping_info>.layer_container>.layer_content,.sm .layer_shipping_info>.layer_container>.layer_content {
    padding: 0 20px 80px;
    overflow-y: auto;
    max-height: calc(100% - 60px)
}

.layer_account_registration .account_registration {
    padding: 0 32px
}

.layer_account_registration.mo>.layer_container,.layer_account_registration.sm>.layer_container {
    top: 0;
    border-radius: 0
}

.layer_account_registration.mo .account_registration,.layer_account_registration.sm .account_registration {
    padding: 0 20px
}

.layer_account_registration.mo .layer_btn,.layer_account_registration.sm .layer_btn {
    display: block;
    padding: 20px 20px 32px
}

.layer_account_registration.mo .layer_btn .btn,.layer_account_registration.sm .layer_btn .btn {
    width: 100%
}

.layer_dropdown {
    position: absolute;
    top: 37px;
    bottom: auto;
    background-color: transparent;
    border: 1px solid #ebebeb
}

.layer_dropdown .layer_container {
    position: relative;
    top: auto;
    left: auto;
    -webkit-transform: none;
    transform: none;
    width: 100%;
    border-radius: 0;
    box-shadow: none
}

.layer_dropdown .btn_layer_close,.layer_dropdown .layer_header {
    display: none
}

.layer_dropdown .drop_list {
    overflow-y: auto;
    max-height: 240px
}

.layer_dropdown .drop_item.item_on .drop_link {
    color: #222;
    font-weight: 700
}

.layer_dropdown .drop_item.item_on .drop_link:after {
    content: "";
    position: absolute;
    top: calc(50% - 12px);
    right: 12px;
    width: 24px;
    height: 24px;
    background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggc3Ryb2tlPSIjMjIyIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTE4LjQgNy4yTDkuNiAxNmwtNC00Ii8+PC9zdmc+) no-repeat
}

.layer_dropdown .drop_link {
    position: relative;
    display: block;
    padding: 11px 50px 10px 16px;
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.8)
}

.layer_dropdown.mo,.layer_dropdown.sm {
    position: fixed;
    top: 0;
    bottom: 0;
    border: 0;
    background-color: rgba(34,34,34,.5)
}

.layer_dropdown.mo .layer_container,.layer_dropdown.sm .layer_container {
    position: absolute
}

.layer_dropdown.mo .btn_layer_close,.layer_dropdown.mo .layer_header,.layer_dropdown.sm .btn_layer_close,.layer_dropdown.sm .layer_header {
    display: block
}

.layer_dropdown.mo .drop_list,.layer_dropdown.sm .drop_list {
    max-height: 340px
}

.layer_dropdown.mo .drop_item+.drop_item,.layer_dropdown.sm .drop_item+.drop_item {
    border-top: 1px solid #ebebeb
}

.layer_dropdown.mo .drop_item.item_on .drop_link:after,.layer_dropdown.sm .drop_item.item_on .drop_link:after {
    right: 20px
}

.layer_dropdown.mo .drop_link,.layer_dropdown.sm .drop_link {
    padding: 15px 60px 15px 20px;
    font-size: 15px;
    letter-spacing: -.15px
}

.layer_address_tab .layer_container {
    width: 520px;
    min-height: 550px
}

.layer_address.mo .layer_container,.layer_address.sm .layer_container {
    top: 0;
    border-radius: 0
}

.layer_address.mo .btn_layer_close,.layer_address.sm .btn_layer_close {
    left: 20px;
    right: auto
}

.layer_social_share .layer_container {
    width: 340px
}

.layer_float_right.container_shadow,.layer_inventory_info.container_shadow,.layer_social_comment.container_shadow {
    background: transparent
}

.layer_float_right .layer_container,.layer_inventory_info .layer_container,.layer_social_comment .layer_container {
    z-index: 1;
    top: 0;
    left: auto;
    right: 0;
    bottom: 0;
    -webkit-transform: none;
    transform: none;
    width: 420px;
    border-radius: 0;
    box-shadow: none;
    display: flex;
    flex-direction: column;
    height: 100%
}

.layer_float_right .layer_container_shadow,.layer_inventory_info .layer_container_shadow,.layer_social_comment .layer_container_shadow {
    z-index: 0;
    position: absolute;
    content: "";
    right: 0;
    top: 0;
    bottom: 0;
    width: 420px;
    background: #222;
    opacity: .1;
    -webkit-filter: blur(10px);
    filter: blur(10px)
}

.layer_float_right .layer_content,.layer_inventory_info .layer_content,.layer_social_comment .layer_content {
    flex: 1;
    display: flex;
    flex-direction: column;
    overflow: auto
}

.layer_float_right.lg .layer_header .title,.layer_float_right.md .layer_header .title,.layer_inventory_info.lg .layer_header .title,.layer_inventory_info.md .layer_header .title,.layer_social_comment.lg .layer_header .title,.layer_social_comment.md .layer_header .title {
    padding: 30px 56px;
    text-align: left;
    font-size: 20px;
    letter-spacing: -.3px
}

.layer_float_right.lg .btn_layer_close,.layer_float_right.md .btn_layer_close,.layer_inventory_info.lg .btn_layer_close,.layer_inventory_info.md .btn_layer_close,.layer_social_comment.lg .btn_layer_close,.layer_social_comment.md .btn_layer_close {
    top: 30px;
    left: 24px;
    right: auto
}

.layer_float_right.mo .layer_container,.layer_float_right.sm .layer_container,.layer_inventory_info.mo .layer_container,.layer_inventory_info.sm .layer_container,.layer_social_comment.mo .layer_container,.layer_social_comment.sm .layer_container {
    top: 0;
    border-radius: 0
}

.layer_float_right.mo .btn_layer_close,.layer_float_right.sm .btn_layer_close,.layer_inventory_info.mo .btn_layer_close,.layer_inventory_info.sm .btn_layer_close,.layer_social_comment.mo .btn_layer_close,.layer_social_comment.sm .btn_layer_close {
    left: 16px;
    right: auto;
    width: 24px;
    height: 24px;
    background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggc3Ryb2tlPSIjMDAwIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Ik0yMSAxMkgzbTcgN2wtNy03IDctNyIvPjwvc3ZnPg==) no-repeat
}

.layer_float_right.mo .ico-close,.layer_float_right.sm .ico-close,.layer_inventory_info.mo .ico-close,.layer_inventory_info.sm .ico-close,.layer_social_comment.mo .ico-close,.layer_social_comment.sm .ico-close {
    display: none
}

.layer_social_user_list.mo .layer_container,.layer_social_user_list.sm .layer_container {
    top: 0;
    border-radius: 0
}

.layer_social_user_list.mo .btn_layer_close,.layer_social_user_list.sm .btn_layer_close {
    left: 16px;
    right: auto;
    width: 24px;
    height: 24px;
    background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggc3Ryb2tlPSIjMDAwIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Ik0yMSAxMkgzbTcgN2wtNy03IDctNyIvPjwvc3ZnPg==) no-repeat
}

.layer_social_user_list.mo .ico-close,.layer_social_user_list.sm .ico-close {
    display: none
}

.layer_social_user_list.lg .layer_content,.layer_social_user_list.md .layer_content {
    max-height: 388px;
    margin-bottom: 32px
}

.layer_detail_size_select.select_only_size .layer_container {
    display: flex;
    flex-direction: column;
    width: 480px;
    height: 514px
}

.layer_detail_size_select.select_only_size .layer_container .layer_header {
    flex: none
}

.layer_detail_size_select.select_only_size .layer_container .layer_content {
    position: relative;
    flex: 1;
    margin-top: 10px;
    margin-bottom: 32px;
    overflow-x: hidden;
    overflow-y: auto
}

.layer_detail_size_select.select_only_size .layer_container .select_area {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    padding: 0 32px
}

.layer_detail_size_select.select_only_size.mo .layer_container,.layer_detail_size_select.select_only_size.sm .layer_container {
    width: 100%
}

.layer_detail_size_select.select_only_size.mo .layer_container .select_area,.layer_detail_size_select.select_only_size.sm .layer_container .select_area {
    padding: 16px;
    margin-top: 0
}

.layer_detail_size_select.mo .layer_container,.layer_detail_size_select.sm .layer_container {
    display: flex;
    flex-direction: column;
    height: calc(100% - 40px);
    background-color: #fafafa
}

.layer_detail_size_select.mo .layer_container .title,.layer_detail_size_select.sm .layer_container .title {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding-top: 11px;
    padding-bottom: 11px
}

.layer_detail_size_select.mo .layer_container .title .subtitle,.layer_detail_size_select.sm .layer_container .title .subtitle {
    line-height: 16px
}

.layer_detail_size_select.mo .layer_container .layer_content,.layer_detail_size_select.sm .layer_container .layer_content {
    height: calc(100% - 60px);
    margin: 0
}

.layer_detail_size_select.mo .layer_container .detail_content,.layer_detail_size_select.sm .layer_container .detail_content {
    display: flex;
    flex-direction: column;
    height: 100%
}

.layer_detail_size_select.mo .layer_container .product_info,.layer_detail_size_select.sm .layer_container .product_info {
    flex: none;
    background-color: #fff
}

.layer_detail_size_select.mo .layer_container .wrap_size,.layer_detail_size_select.sm .layer_container .wrap_size {
    flex: 1;
    overflow-y: auto;
    min-height: 0
}

.layer_detail_size_select.mo .layer_container .wrap_button,.layer_detail_size_select.sm .layer_container .wrap_button {
    flex: none
}

.layer_inventory_shipment.lg .layer_header,.layer_inventory_shipment.md .layer_header {
    padding: 24px 24px 20px 56px
}

.layer_inventory_shipment.lg .layer_header .title,.layer_inventory_shipment.md .layer_header .title {
    min-height: 34px;
    line-height: 24px;
    padding: 6px 0;
    font-size: 18px;
    letter-spacing: -.27px;
    font-weight: 700;
    letter-spacing: -.015px
}

.layer_inventory_shipment.lg .layer_content,.layer_inventory_shipment.md .layer_content {
    height: calc(100% - 80px)
}

.layer_inventory_guide .layer_container {
    width: 400px;
    height: 334px;
    padding: 39px 32px 32px;
    box-sizing: border-box
}

.layer_inventory_guide .layer_header {
    text-align: center
}

.layer_inventory_guide .layer_header .title {
    display: block;
    min-height: auto;
    line-height: 29px;
    padding: 0;
    font-size: 24px;
    letter-spacing: -.36px;
    font-weight: 700;
    letter-spacing: -.15px;
    color: #222
}

.layer_inventory_guide .layer_header .desc {
    line-height: 17px;
    margin-top: 8px;
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.5)
}

.layer_inventory_guide .layer_content {
    margin-top: 16px;
    border-top: 1px solid #ebebeb
}

.layer_inventory_guide .layer_content .breakdowns {
    padding: 16px 0 43px
}

.layer_inventory_guide .layer_content .inventory_text_line .key {
    line-height: 16px;
    color: rgba(34,34,34,.5)!important
}

.layer_inventory_guide .layer_content .inventory_text_line .value {
    line-height: 16px
}

.layer_inventory_guide .layer_content .btn {
    font-weight: 600;
    letter-spacing: -.01px;
    border-radius: 12px
}

.layer_inventory_retrieve .layer_container {
    width: 400px;
    height: 318px;
    padding: 39px 32px 32px;
    box-sizing: border-box
}

.mo .point .layer_container,.sm .point .layer_container {
    height: calc(100% - 60px)
}

.layer_processing_fee>.layer_container {
    height: 470px
}

.layer_processing_fee>.layer_container .layer_content {
    height: calc(100% - 60px)
}

.layer_processing_fee.layer.mo.full>.layer_container,.layer_processing_fee.layer.mo_ls.full>.layer_container,.layer_processing_fee.layer.sm.full>.layer_container {
    position: relative;
    height: 100%;
    border-radius: 0
}

.layer_processing_fee.layer.mo .layer_dropdown .layer_container,.layer_processing_fee.layer.mo_ls .layer_dropdown .layer_container,.layer_processing_fee.layer.sm .layer_dropdown .layer_container {
    height: auto;
    border-radius: 16px 16px 0 0
}

.layer_processing_fee.layer.mo .layer_alert .layer_container,.layer_processing_fee.layer.mo_ls .layer_alert .layer_container,.layer_processing_fee.layer.sm .layer_alert .layer_container {
    height: auto;
    border-radius: 16px
}

.layer_processing_fee.layer.mo .layer_btn:first-child,.layer_processing_fee.layer.mo_ls .layer_btn:first-child,.layer_processing_fee.layer.sm .layer_btn:first-child {
    display: none
}

.layer_shipping_memo .layer_header .title {
    padding: 18px 0
}

.layer_shipping_memo .layer_container {
    width: 462px;
    height: auto;
    padding: 0 32px
}

.md .layer_shipping_memo .layer_container,.mo .layer_shipping_memo .layer_container,.sm .layer_shipping_memo .layer_container {
    width: 100%;
    height: 100%;
    padding: 0 16px;
    border-radius: 0
}

.md .layer_shipping_memo .btn_layer_close,.mo .layer_shipping_memo .btn_layer_close,.sm .layer_shipping_memo .btn_layer_close {
    left: 16px;
    right: unset;
    width: 24px;
    height: 24px
}

.layer_search_filter .layer_container {
    top: auto;
    left: 0;
    right: 0;
    bottom: 0;
    -webkit-transform: none;
    transform: none;
    width: 100%;
    border-radius: 16px 16px 0 0
}

.layer_search_filter .layer_content {
    display: flex;
    flex-direction: column;
    overflow-y: auto;
    overflow-x: hidden;
    height: calc(80vh - 60px);
    min-height: 260px;
    position: relative
}

.layer_shop_category .layer_container .layer_header {
    border-bottom: 1px solid #f0f0f0
}

.layer_shop_category .layer_container .layer_header .title {
    padding: 11px 10px 12px;
    min-height: 44px
}

.layer_shop_category .layer_container .btn_layer_close {
    top: 12px;
    right: 20px
}

.layer_shop_category .layer_container .btn_layer_close [class*=ico-] {
    width: 20px;
    height: 20px
}

.lg .layer_shop_category .layer_container,.md .layer_shop_category .layer_container {
    max-height: 100%;
    width: 100%;
    border-radius: 0
}

body.hide_scroll {
    scrollbar-width: none;
    -ms-overflow-style: none
}

body.hide_scroll::-webkit-scrollbar {
    display: none;
    width: 0;
    height: 0;
    background: transparent
}

.list_loading {
    padding: 120px 0;
    text-align: center
}

.mo .list_loading,.sm .list_loading {
    padding-top: 0
}

.loading_img {
    display: inline-block;
    width: 80px;
    height: 80px
}

.lg .layer_notifications .layer_container>.layer_header>.title,.md .layer_notifications .layer_container>.layer_header>.title {
    padding-top: 28px;
    padding-bottom: 16px
}

.layer_notifications .layer_container>.btn_layer_close {
    top: 18px
}

.lg .layer_notifications .layer_container>.btn_layer_close,.md .layer_notifications .layer_container>.btn_layer_close {
    top: 27px
}

.tabs {
    border-bottom: 1px solid #f0f0f0
}

.category_chips+.notification_list.is_scroll {
    border-top: 1px solid #f0f0f0
}

.category_chips+.notification_list .help_text {
    margin-top: 12px
}

.lg .layer_bottom_sheet .layer_container,.md .layer_bottom_sheet .layer_container {
    max-width: 400px
}

.layer_bottom_sheet .layer_content,.layer_bottom_sheet .layer_header {
    word-break: keep-all;
    padding-left: 16px;
    padding-right: 16px
}

.lg .layer_bottom_sheet .layer_content,.lg .layer_bottom_sheet .layer_header,.md .layer_bottom_sheet .layer_content,.md .layer_bottom_sheet .layer_header {
    padding-left: 32px;
    padding-right: 32px
}

.layer_bottom_sheet .layer_content {
    padding-bottom: 20px
}

.lg .layer_bottom_sheet .layer_content,.md .layer_bottom_sheet .layer_content {
    padding-bottom: 32px
}

.layer-btn-close {
    position: relative;
    min-height: 60px
}

.lg .layer-btn-close,.md .layer-btn-close {
    min-height: 32px
}

.layer-btn-close~ {
    padding-left: 16px;
    padding-right: 16px
}

.lg .btn_layer_close,.md .btn_layer_close {
    display: none
}

.layer-title {
    font-size: 24px;
    letter-spacing: -.36px;
    font-weight: 700;
    line-height: 29px;
    text-align: center
}

.layer-description {
    margin-top: 6px;
    padding-left: 18px;
    padding-right: 18px;
    font-size: 13px;
    letter-spacing: -.07px;
    text-align: center
}

.layer-buttons {
    margin-top: 30px
}

.layer-buttons .display_button {
    height: 52px;
    font-size: 16px;
    letter-spacing: -.16px;
    font-weight: 700
}

.layer-buttons .underline {
    margin-top: 20px;
    text-decoration: underline
}

.layer-header-image {
    margin-left: auto;
    margin-right: auto;
    width: 95px;
    height: 95px;
    border-radius: 10px;
    overflow: hidden
}

.layer-header-image+.layer-title {
    margin-top: 24px
}

.display_paragraph.action_url {
    cursor: pointer;
    text-decoration: underline
}

.display_paragraph.line_break_by_truncating_tail {
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical
}

.display_paragraph em {
    font-weight: 700
}

.display_button {
    cursor: pointer;
    border-radius: 10px;
    min-width: -webkit-fit-content;
    min-width: -moz-fit-content;
    min-width: fit-content
}

.display_button.xlarge {
    font-size: 18px;
    letter-spacing: -.09px;
    font-weight: 700;
    height: 60px
}

.display_button.large {
    font-size: 14px;
    width: 140px;
    padding: 13px 0;
    height: 42px
}

.display_button.large.block {
    height: 52px;
    font-size: 16px;
    font-weight: 600
}

.display_button.medium {
    padding: 0 18px;
    height: 36px;
    font-size: 14px;
    border-radius: 12px
}

.display_button.small {
    font-size: 12px;
    letter-spacing: -.06px;
    padding: 9px 14px;
    height: 34px
}

.display_button.small.block {
    height: 42px;
    font-size: 14px
}

.display_button.dark_bordered,.display_button.light_gray_bordered {
    border: 1px solid
}

.display_button.light_gray_bordered_text_dark50 {
    border: 1px solid;
    border-radius: 12px
}

.display_button.block {
    width: 100%
}

.display_button.h-full {
    height: 100%
}

.display_button.disabled,.display_button[disabled] {
    cursor: not-allowed
}

.app_subtext,.btn_appdown,.logo {
    display: none
}

.mo .appdown_area,.sm .appdown_area {
    width: 100%;
    min-height: auto;
    border-radius: 16px 16px 0 0
}

.mo .appdown_area .appdown_box,.sm .appdown_area .appdown_box {
    padding: 40px 20px 38px
}

.mo .appdown_area .logo,.sm .appdown_area .logo {
    display: block;
    height: 80px
}

.mo .appdown_area .logo-app,.sm .appdown_area .logo-app {
    width: 80px;
    height: 80px
}

.mo .appdown_area .app_title,.sm .appdown_area .app_title {
    padding-top: 8px
}

.mo .appdown_area .app_subtext,.sm .appdown_area .app_subtext {
    display: block;
    padding-top: 2px;
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.5)
}

.mo .appdown_area .btn_appdown,.sm .appdown_area .btn_appdown {
    display: inline-flex;
    margin-top: 24px;
    padding: 0 26px
}

.mo .appdown_area .appdown_content,.mo .appdown_area .img_qr,.mo .appdown_area .sub_info,.sm .appdown_area .appdown_content,.sm .appdown_area .img_qr,.sm .appdown_area .sub_info {
    display: none
}

.mo .btn_appdown_close,.sm .btn_appdown_close {
    right: 20px
}

.appdown_area {
    position: relative
}

.appdown_box {
    padding: 40px 32px 0;
    background-color: #fff;
    text-align: center
}

.app_title {
    font-size: 20px;
    letter-spacing: -.3px;
    font-weight: 700
}

.img_qr {
    padding: 26px 0 30px
}

.img_qr img {
    width: 130px;
    height: 130px
}

.appdown_content {
    padding: 32px 32px 38px;
    background-color: #fafafa
}

.appdown_content.confirm .btn_submit {
    color: #fff;
    background-color: #0f0e0e
}

.info_text {
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.8)
}

.input_phone_box {
    margin-top: 12px;
    position: relative;
    border-radius: 8px;
    border: 1px solid #d3d3d3;
    padding: 10px 75px 11px 10px;
    background-color: #fff
}

.btn_submit {
    position: absolute;
    top: 50%;
    right: 3px;
    margin-top: -18px;
    padding: 0 14px;
    height: 36px;
    line-height: 36px;
    border-radius: 8px;
    font-size: 12px;
    letter-spacing: -.06px
}

.btn_submit.disabled {
    background-color: #d3d3d3;
    color: rgba(34,34,34,.2)
}

.appdown_checkbox {
    padding-top: 12px;
    text-align: left
}

.btn_appdown_close {
    position: absolute;
    top: 18px;
    right: 24px;
    cursor: pointer
}

.appdown_area.purchase_intension .app_subtext {
    display: block;
    padding-top: 6px;
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.8)
}

.appdown_area.purchase_intension.mo .app_title,.appdown_area.purchase_intension.sm .app_title {
    padding-top: 8px
}

.appdown_area.purchase_intension.mo .app_subtext,.appdown_area.purchase_intension.sm .app_subtext {
    padding-top: 2px
}

.appdown_area.purchase_intension.mo .btn_appdown,.appdown_area.purchase_intension.sm .btn_appdown {
    margin-top: 24px
}

@media(min-width: 750px) {
    .social_footer .appdown_box {
        padding:0
    }

    .social_footer .app_title {
        font-size: 40px;
        line-height: 54px;
        letter-spacing: -.8px
    }

    .social_footer .img_qr {
        padding: 31px 0 34px
    }

    .social_footer .img_qr img {
        width: 142px;
        height: 142px
    }

    .social_footer .appdown_content {
        margin: 0 auto;
        padding: 0;
        width: 454px;
        background-color: #fff
    }

    .social_footer .info_text {
        margin-bottom: 12px;
        line-height: 26px;
        color: #1d1d1b
    }

    .social_footer .info_text br {
        display: none
    }

    .social_footer .input_phone_box {
        padding: 14px 90px 10px 15px
    }

    .social_footer .btn_submit {
        right: 5px;
        margin-top: -20px;
        height: 40px;
        line-height: 42px;
        font-size: 14px
    }

    .social_footer .appdown_checkbox {
        padding-top: 18px
    }

    .social_footer .btn_appdown_close {
        display: none
    }
}

@media(max-width: 749px) {
    .social_footer .appdown_area {
        display:none
    }
}

.input_box {
    position: relative;
    padding: 10px 0 14px
}

.input_phone_box .input_box {
    padding: 0
}

.input_title {
    font-size: 13px;
    letter-spacing: -.07px;
    line-height: 18px
}

.input_title.ess {
    position: relative;
    display: inline-block;
    padding-right: 6px
}

.input_title.ess:after {
    content: "*";
    position: absolute;
    top: -2px;
    right: 0
}

.input_item {
    position: relative
}

.input_txt {
    padding: 8px 0;
    width: 100%;
    font-size: 15px;
    letter-spacing: -.15px;
    line-height: 22px;
    border-bottom: 1px solid #ebebeb
}

.input_txt:focus {
    padding-bottom: 7px;
    border-bottom: 2px solid #333
}

.input_logistics_companies .input_txt,.input_txt.hover {
    cursor: pointer
}

.input_phone_box .input_txt {
    border-bottom: none;
    padding: 0
}

.input_phone_box .input_txt:focus {
    padding-bottom: 0;
    border-bottom: none
}

.join_area .input_txt {
    padding-top: 9px
}

.profile_group .input_txt {
    padding: 7px 0 19px;
    font-size: 16px;
    letter-spacing: -.16px
}

.profile_group .modify .input_txt {
    padding: 7px 0;
    font-size: 15px;
    letter-spacing: -.15px
}

.profile_group .modify .input_txt:focus {
    padding-bottom: 6px
}

.profile_group .modify .has_error .input_txt:focus {
    padding-bottom: 7px
}

.input_sub_text {
    position: absolute;
    line-height: 16px;
    font-size: 11px;
    color: rgba(34,34,34,.5)
}

.input_error {
    display: none
}

.has_error .input_title {
    color: #f15746
}

.has_error .input_txt {
    border-bottom-color: #ef6253
}

.has_error .input_txt:focus {
    border-width: 1px;
    padding-bottom: 8px
}

.has_error .input_error {
    display: block;
    position: absolute;
    line-height: 16px;
    font-size: 11px;
    color: #f15746
}

.has_error .input_sub_text {
    display: none
}

.has_button .input_box {
    position: relative
}

.has_button .input_txt {
    padding-right: 30px;
    height: 38px
}

.has_button .btn {
    position: absolute;
    top: 50%;
    right: 0;
    margin-top: -12px
}

.social_footer .input_phone_box .input_txt {
    font-size: 16px;
    letter-spacing: -.16px;
    line-height: 26px;
    letter-spacing: 0
}

.layer_shipping_info .input_box:first-child {
    padding-top: 0
}

.layer_shipping_info .input_box+.input_box {
    margin-top: 12px
}

.layer_shipping_info.mo .input_box:first-child,.layer_shipping_info.sm .input_box:first-child {
    padding-top: 10px
}

.lg .my_account .input_box+.input_box,.md .my_account .input_box+.input_box {
    margin-top: 8px
}

.checkbox_item {
    position: relative;
    font-size: 0
}

.checkbox_item .check_label {
    position: relative;
    cursor: pointer;
    display: inline-block
}

.checkbox_item .label_txt {
    padding-left: 8px;
    display: inline-block;
    line-height: 24px;
    font-size: 13px;
    letter-spacing: -.07px;
    vertical-align: top
}

.mo .checkbox_item .label_txt,.sm .checkbox_item .label_txt {
    margin-left: 12px
}

.delivery_check .checkbox_item {
    float: left;
    margin-right: 19px
}

.delivery_check .checkbox_item:last-child {
    margin-right: 0
}

.appdown_checkbox [class*=ico-check-] {
    position: absolute;
    top: 5px;
    left: 0
}

.appdown_checkbox .label_txt {
    padding-left: 36px;
    line-height: 16px;
    font-size: 11px;
    letter-spacing: 0;
    color: rgba(34,34,34,.6)
}

.join_terms .check_main .checkbox_item {
    width: calc(100% - 40px)
}

.join_terms .check_sub .checkbox_item {
    padding-right: 60px
}

.join_terms .check_label {
    display: inline-flex;
    max-width: 100%
}

.join_terms .label_txt {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 14px;
    letter-spacing: -.21px;
    line-height: 24px
}

.social_footer .appdown_checkbox [class*=ico-check-] {
    top: 1px;
    width: 20px;
    height: 20px
}

.social_footer .label_txt {
    margin-left: 0;
    padding-left: 32px
}

.withdrawal_wrap .label_txt {
    letter-spacing: -.16px;
    font-size: 16px
}

.layer_withdrawal .label_txt {
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.5)
}

.receipt_config_wrap .check_label {
    display: flex
}

.toast {
    position: fixed;
    z-index: 99999;
    left: 50%;
    top: 20px;
    -webkit-transform: translate(-50%);
    transform: translate(-50%);
    visibility: hidden
}

.toast.show {
    visibility: visible
}

.toast .wrap {
    display: flex;
    align-items: center;
    background: rgba(34,34,34,.8);
    border-radius: 25px;
    min-width: 400px;
    height: 50px;
    padding: 6px 43px 6px 12px
}

.mo.toast,.sm.toast {
    width: 100%;
    top: auto;
    bottom: 20px;
    padding-left: 16px;
    padding-right: 16px
}

.mo.toast .wrap,.sm.toast .wrap {
    width: 100%;
    min-width: auto
}

.toast-icon {
    width: 24px;
    height: 24px;
    margin-right: 10px
}

.toast-content {
    flex: 1;
    text-align: center;
    color: #fff;
    font-size: 14px;
    line-height: 17px
}

.header {
    background-color: #fff
}

.header.fixed {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000
}

.header.no_line {
    box-shadow: 0 0 0 0 transparent!important
}

.notice+.header {
    top: 32px
}

.has_tab .header {
    box-shadow: 0 1px 0 0 rgba(0,0,0,.1)
}

.header>:not(.portal_target) {
    margin-left: auto;
    margin-right: auto;
    max-width: 1280px
}

.main_inner {
    display: flex;
    padding: 20px 40px;
    height: 64px;
    min-width: 320px;
    align-items: center;
    justify-content: space-between
}

.main_inner .center {
    display: flex;
    align-items: center;
    margin: 0 20px;
    max-width: 466px
}

.main_inner .right {
    display: flex;
    min-width: 120px;
    flex-shrink: 0;
    justify-content: flex-end
}

.order .main_inner {
    height: 70px
}

.is_scroll .header.social_header .main_inner {
    height: 69px
}

.is_scroll .header.has_title_switch .main_inner {
    align-items: flex-start;
    height: 136px;
    padding-bottom: 16px
}

.is_scroll .header.has_title_switch .main_inner .search_btn_box {
    margin-top: -2px
}

.is_scroll .header.has_title_switch .main_inner .center {
    align-items: flex-end;
    height: 100%
}

.is_scroll .header.has_title_product .main_inner {
    height: 84px
}

.is_scroll .no_line .header {
    box-shadow: none
}

.md .header,.mo .header,.sm .header {
    top: 0
}

.show_banner .md .header,.show_banner .mo .header,.show_banner .sm .header {
    top: 70px
}

.md .header .main_inner,.mo .header .main_inner,.sm .header .main_inner {
    height: 52px;
    padding: 0 16px
}

.md .header .main_inner .nav_input_box,.mo .header .main_inner .nav_input_box,.sm .header .main_inner .nav_input_box {
    width: 100%
}

.md .header .main_inner .nav_btn_box,.mo .header .main_inner .nav_btn_box,.sm .header .main_inner .nav_btn_box {
    display: flex;
    margin-left: 20px;
    height: 24px;
    width: -webkit-fit-content;
    width: -moz-fit-content;
    width: fit-content
}

.md .header .main_inner .nav_btn_box [class^=btn_]+[class^=btn_],.mo .header .main_inner .nav_btn_box [class^=btn_]+[class^=btn_],.sm .header .main_inner .nav_btn_box [class^=btn_]+[class^=btn_] {
    margin-left: 20px
}

.md .header .main_inner .search_area,.mo .header .main_inner .search_area,.sm .header .main_inner .search_area {
    width: 100%;
    margin: 0 0 0 18px
}

.header_top .top_inner {
    display: flex;
    padding: 8px 40px 0;
    height: 22px
}

.header_top .top_list {
    display: flex;
    align-items: center;
    margin-left: auto
}

.header_top .top_item.has_new {
    position: relative
}

.header_top .top_item.has_new:after {
    content: "";
    position: absolute;
    top: 0;
    right: -7px;
    width: 5px;
    height: 5px;
    border-radius: 50%;
    background: #ef6253
}

.header_top .top_item+.top_item {
    margin-left: 24px
}

.header_top .top_link {
    display: flex;
    align-items: center;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.8)
}

.header_top .top_link [class*=ico-] {
    margin-right: 4px;
    width: 16px;
    height: 16px
}

.logo {
    display: flex;
    width: 120px;
    height: 24px
}

.logo>.logo-kream {
    width: 100%
}

.mo .logo,.sm .logo {
    width: 100px;
    height: 20px
}

.gnb_item {
    margin-right: 40px
}

.gnb_item .gnb_link {
    position: relative;
    display: flex;
    font-size: 18px;
    letter-spacing: -.27px
}

.gnb_item .gnb_link.active {
    font-weight: 700
}

.search_btn_box {
    display: inline-flex
}

.search_btn_box .btn_search {
    display: inherit
}

.search_btn_box .btn_search .nav-search {
    width: 28px;
    height: 28px
}

.gnb_area {
    margin-left: auto
}

.gnb_area,.gnb_list {
    display: flex;
    align-items: center
}

.search_btn_box {
    display: flex
}

.btn_search {
    display: inherit;
    border: none!important
}

.nav-search {
    width: 28px;
    height: 28px
}

.nav_btn_box {
    display: none
}

.search_area .search {
    position: relative;
    padding: 0 40px 0 44px;
    height: 40px;
    background-color: #f4f4f4;
    border-radius: 8px
}

.search_area .ico-search-gray {
    position: absolute;
    top: 8px;
    left: 12px
}

.search_area .btn_search_delete {
    position: absolute;
    top: 8px;
    right: 8px;
    width: 24px;
    height: 24px
}

.search_area .input_search {
    width: 100%;
    height: 100%;
    transition: all .1s;
    font-size: 14px;
    letter-spacing: -.21px
}

.search_area .input_search:focus {
    border: none;
    outline: none;
    -moz-outline-style: none;
    font-size: 14px;
    letter-spacing: -.21px
}

@media(max-width: 359px) {
    .search_area .search {
        padding-right:35px
    }
}

.md .search_area .search,.mo .search_area .search,.sm .search_area .search {
    padding: 0 30px 0 10px
}

.md .search_area .ico-search-gray,.mo .search_area .ico-search-gray,.sm .search_area .ico-search-gray {
    width: 19px;
    height: 19px;
    top: 10px;
    left: 14px
}

.md .search_area .btn_search_delete,.mo .search_area .btn_search_delete,.sm .search_area .btn_search_delete {
    top: 10px;
    right: 10px;
    width: 20px;
    height: 20px
}

.md .search_area .btn_search_delete .ico-delete-circle-gray,.mo .search_area .btn_search_delete .ico-delete-circle-gray,.sm .search_area .btn_search_delete .ico-delete-circle-gray {
    width: 20px;
    height: 20px
}

.md .search_area .input_search,.mo .search_area .input_search,.sm .search_area .input_search {
    font-weight: 700;
    font-size: 15px
}

.md .search_area .input_search::-webkit-input-placeholder,.mo .search_area .input_search::-webkit-input-placeholder,.sm .search_area .input_search::-webkit-input-placeholder {
    font-weight: 400
}

.md .search_area .input_search::-moz-placeholder,.mo .search_area .input_search::-moz-placeholder,.sm .search_area .input_search::-moz-placeholder {
    font-weight: 400
}

.md .search_area .input_search::placeholder,.mo .search_area .input_search::placeholder,.sm .search_area .input_search::placeholder {
    font-weight: 400
}

.navigation_wrap {
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: transparent
}

.navigation_wrap.close {
    display: block;
    position: fixed;
    -webkit-animation: mobile_navigation_background_off-data-v-01b25676 .3s ease-in-out forwards;
    animation: mobile_navigation_background_off-data-v-01b25676 .3s ease-in-out forwards;
    pointer-events: none
}

.navigation_wrap.open {
    display: block;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    -webkit-animation: mobile_navigation_background-data-v-01b25676 .3s ease-in-out forwards;
    animation: mobile_navigation_background-data-v-01b25676 .3s ease-in-out forwards;
    pointer-events: all
}

.navigation_wrap.open .navigation {
    -webkit-transform: translateX(-100%);
    transform: translateX(-100%)
}

.navigation_wrap .navigation {
    display: block;
    position: fixed;
    z-index: 1010;
    top: 0;
    right: -79.4%;
    bottom: 0;
    width: 79.4%;
    background-color: #fff;
    padding-top: 60px;
    overflow-y: auto;
    transition: -webkit-transform .3s ease-in-out;
    transition: transform .3s ease-in-out;
    transition: transform .3s ease-in-out,-webkit-transform .3s ease-in-out
}

.navigation_wrap .navigation_inner {
    position: relative;
    padding-bottom: 55px;
    min-height: 100%
}

.navigation_wrap .nav_list .nav_item {
    border-bottom: 1px solid #ebebeb
}

.navigation_wrap .nav_list .nav_item:last-child {
    border-bottom: 0
}

.navigation_wrap .nav_list .nav_link {
    display: block;
    padding: 19px 20px 18px;
    height: 100%;
    font-size: 15px;
    letter-spacing: -.15px;
    font-weight: 700
}

.navigation_wrap .nav_login .login_list {
    padding: 17px 10px 10px 0;
    font-size: 0
}

.navigation_wrap .nav_login .item {
    position: relative;
    display: inline-block;
    padding: 10px 21px
}

.navigation_wrap .nav_login .item+.item:before {
    content: "";
    position: absolute;
    top: 8px;
    left: 0;
    width: 1px;
    height: 25px;
    background-color: #ebebeb
}

.navigation_wrap .nav_login .item .login_link {
    font-size: 13px;
    letter-spacing: -.07px;
    line-height: 20px;
    color: rgba(34,34,34,.8)
}

.navigation_wrap .nav_logout {
    padding: 12px 0 0 20px
}

.navigation_wrap .nav_logout .text_mail {
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.5)
}

.navigation_wrap .nav_logout .btn_logout {
    margin-top: 8px;
    font-size: 14px;
    letter-spacing: -.21px;
    color: #f15746
}

.navigation_wrap .nav_logout~.nav_download {
    margin-top: 53px
}

.navigation_wrap .nav_download {
    margin-top: 30px;
    margin-left: 20px
}

.navigation_wrap .nav_download .download_txt {
    font-size: 12px;
    color: rgba(34,34,34,.8)
}

.navigation_wrap .nav_download .btn_appdown {
    margin-top: 12px
}

.navigation_wrap .nav_download .btn_appdown .btn {
    padding: 0 11px;
    height: 40px;
    line-height: 38px
}

.navigation_wrap .btn_nav_close {
    position: absolute;
    top: 0;
    right: 0;
    padding: 18px 11px;
    line-height: 0
}

@-webkit-keyframes mobile_navigation_background-data-v-01b25676 {
    0% {
        background-color: transparent
    }

    to {
        background-color: rgba(34,34,34,.5)
    }
}

@keyframes mobile_navigation_background-data-v-01b25676 {
    0% {
        background-color: transparent
    }

    to {
        background-color: rgba(34,34,34,.5)
    }
}

@-webkit-keyframes mobile_navigation_background_off-data-v-01b25676 {
    0% {
        background-color: rgba(34,34,34,.5)
    }

    to {
        background-color: transparent
    }
}

@keyframes mobile_navigation_background_off-data-v-01b25676 {
    0% {
        background-color: rgba(34,34,34,.5)
    }

    to {
        background-color: transparent
    }
}

.header {
    position: -webkit-sticky;
    position: sticky;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000;
    background-color: #fff
}

.is_scroll .header {
    box-shadow: 0 1px 0 0 rgba(0,0,0,.1)
}

.header .inner {
    position: relative;
    padding: 0 50px;
    min-width: 320px;
    height: 60px
}

.header .btn_cancel,.header .btn_close {
    position: absolute;
    top: 18px;
    left: 22px;
    height: 24px
}

.header .title {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%
}

.header .title_txt {
    display: inline-block;
    font-size: 18px;
    letter-spacing: -.27px;
    font-weight: 700;
    color: #000
}

.header.sm .btn_cancel,.header.sm .btn_close {
    left: 14px
}

.header {
    background-color: #fff
}

.header.fixed {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000
}

.header.no_line {
    box-shadow: 0 0 0 0 transparent!important
}

.notice+.header {
    top: 32px
}

.has_tab .header {
    box-shadow: 0 1px 0 0 rgba(0,0,0,.1)
}

.header>:not(.portal_target) {
    margin-left: auto;
    margin-right: auto;
    max-width: 1280px
}

.main_inner {
    display: flex;
    padding: 20px 40px;
    height: 64px;
    min-width: 320px;
    align-items: center;
    justify-content: space-between
}

.main_inner .center {
    display: flex;
    align-items: center;
    margin: 0 20px;
    max-width: 466px
}

.main_inner .right {
    display: flex;
    min-width: 120px;
    flex-shrink: 0;
    justify-content: flex-end
}

.order .main_inner {
    height: 70px
}

.is_scroll .header.social_header .main_inner {
    height: 69px
}

.is_scroll .header.has_title_switch .main_inner {
    align-items: flex-start;
    height: 136px;
    padding-bottom: 16px
}

.is_scroll .header.has_title_switch .main_inner .search_btn_box {
    margin-top: -2px
}

.is_scroll .header.has_title_switch .main_inner .center {
    align-items: flex-end;
    height: 100%
}

.is_scroll .header.has_title_product .main_inner {
    height: 84px
}

.is_scroll .no_line .header {
    box-shadow: none
}

.md .header,.mo .header,.sm .header {
    top: 0
}

.show_banner .md .header,.show_banner .mo .header,.show_banner .sm .header {
    top: 70px
}

.md .header .main_inner,.mo .header .main_inner,.sm .header .main_inner {
    height: 52px;
    padding: 0 16px
}

.md .header .main_inner .nav_input_box,.mo .header .main_inner .nav_input_box,.sm .header .main_inner .nav_input_box {
    width: 100%
}

.md .header .main_inner .nav_btn_box,.mo .header .main_inner .nav_btn_box,.sm .header .main_inner .nav_btn_box {
    display: flex;
    margin-left: 20px;
    height: 24px;
    width: -webkit-fit-content;
    width: -moz-fit-content;
    width: fit-content
}

.md .header .main_inner .nav_btn_box [class^=btn_]+[class^=btn_],.mo .header .main_inner .nav_btn_box [class^=btn_]+[class^=btn_],.sm .header .main_inner .nav_btn_box [class^=btn_]+[class^=btn_] {
    margin-left: 20px
}

.md .header .main_inner .search_area,.mo .header .main_inner .search_area,.sm .header .main_inner .search_area {
    width: 100%;
    margin: 0 0 0 18px
}

[class^=btn_].has_new {
    position: relative
}

[class^=btn_].has_new:after {
    content: "";
    position: absolute;
    top: -3px;
    right: -3px;
    width: 6px;
    height: 6px;
    border-radius: 50%;
    background: #ef6253
}

.brand_list {
    padding: 0 40px;
    overflow-x: auto;
    white-space: nowrap;
    -ms-overflow-style: none;
    scrollbar-width: none
}

.brand_list::-webkit-scrollbar {
    display: none
}

.brand_list.search_trend {
    display: flex;
    overflow-x: auto;
    padding: 0 0 16px
}

.brand_list.search_trend .brand_item {
    background-color: transparent!important
}

.brand_list.search_trend .brand_item+.brand_item {
    margin-left: 40px
}

.brand_list.search_trend .brand_box {
    width: 84px;
    height: 82px
}

.brand_list.search_trend .brand_img {
    width: 70px;
    height: 70px
}

.brand_list.search_trend .brand_name {
    margin-top: -2px;
    font-size: 13px;
    font-weight: 600
}

.brand_list.fetching {
    opacity: .5
}

.brand_item {
    display: inline-block;
    vertical-align: top;
    border-radius: 8px
}

.brand_item+.brand_item {
    margin-left: 20px
}

.brand_box {
    display: block;
    width: 100px;
    height: 100px;
    text-align: center;
    cursor: pointer
}

.brand_box:hover {
    font-weight: 700
}

.brand_img {
    display: inline-flex!important;
    width: 80px;
    height: 80px
}

.brand_name {
    max-width: 80px;
    margin: -8px auto 0;
    font-size: 12px
}

.mo .brand_list,.sm .brand_list {
    min-height: 90px;
    padding: 18px 24px 10px
}

.mo .brand_list .brand_item+.brand_item,.sm .brand_list .brand_item+.brand_item {
    margin-left: 8px
}

.mo .brand_list.search_trend,.sm .brand_list.search_trend {
    display: block;
    padding: 0 16px 16px
}

.mo .brand_list.search_trend .brand_item+.brand_item,.sm .brand_list.search_trend .brand_item+.brand_item {
    margin-left: 0
}

.mo .brand_list.search_trend .brand_box,.sm .brand_list.search_trend .brand_box {
    height: 74px
}

.mo .brand_list.search_trend .brand_img,.sm .brand_list.search_trend .brand_img {
    width: 60px;
    height: 60px
}

.mo .brand_list.search_trend .brand_name,.sm .brand_list.search_trend .brand_name {
    font-size: 12px
}

.sm .brand_list {
    padding-left: 16px;
    padding-right: 16px
}

.sm .brand_list.search_trend {
    padding-left: 8px;
    padding-right: 8px
}

.lg .brand_list,.md .brand_list {
    min-height: 98px
}

.suggest_keyword {
    padding: 16px;
    font-size: 15px;
    color: #646a76
}

.suggest_keyword:active,.suggest_keyword:hover {
    background-color: #fafafa
}

.suggest_keyword .highlight {
    color: #222;
    font-weight: 600
}

.result_nodata {
    position: relative;
    padding: 120px 0 100px;
    background-color: #fff;
    text-align: center
}

.result_nodata .nodata_main {
    font-size: 16px;
    letter-spacing: -.16px;
    color: rgba(34,34,34,.8)
}

.result_nodata .nodata_sub {
    padding-top: 6px;
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.5)
}

.result_nodata .emphasis {
    font-weight: 600
}

.result_nodata .btn_nodata {
    font-size: 12px;
    font-weight: 600;
    padding: 9px 10px;
    border: 1px solid #222;
    border-radius: 10px;
    margin-top: 12px;
    cursor: pointer
}

.result_nodata.with_recommend {
    padding: 40px 0
}

.result_nodata.mo,.result_nodata.sm {
    padding: 80px 0
}

.result_nodata.mo .nodata_sub,.result_nodata.sm .nodata_sub {
    font-size: 12px;
    letter-spacing: -.06px
}

.layer_search .result_nodata.mo,.layer_search .result_nodata.sm {
    margin-right: 15px
}

.search_result .result_nodata.mo,.search_result .result_nodata.sm {
    display: flex;
    justify-content: center;
    flex-direction: column
}

.search_result .result_nodata.mo.no_recommend,.search_result .result_nodata.sm.no_recommend {
    height: calc(100vh - 216px)
}

.suggest_title_area {
    display: flex;
    justify-content: space-between;
    padding: 16px;
    font-size: 15px
}

.suggest_title_area:active,.suggest_title_area:hover {
    background-color: #fafafa
}

.suggest_title_area .brand_type {
    font-size: 12px;
    color: rgba(34,34,34,.4)
}

.suggest_title_area .title {
    display: flex;
    grid-gap: 2px;
    gap: 2px
}

.suggest_title_area .title .suggest_title {
    font-size: 15px;
    font-weight: 600;
    color: #222
}

.suggest_title_area .title .ico-brand-official {
    width: 14px;
    height: 14px;
    margin-top: 2px
}

.search {
    width: 500px;
    flex: none;
    order: 0;
    flex-grow: 1;
    margin: 0 8px;
    padding-bottom: 16px;
    border-bottom: 3px solid #000
}

.search .input_search {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 24px;
    font-weight: 700;
    color: #000;
    line-height: 29px;
    padding: 0 13px 0 1px;
    width: 468px;
    letter-spacing: -.015em
}

.search .input_search::-webkit-input-placeholder {
    font-weight: 400;
    font-size: 20px;
    line-height: 24px;
    letter-spacing: -.015em;
    color: rgba(34,34,34,.3)
}

.search .input_search::-moz-placeholder {
    font-weight: 400;
    font-size: 20px;
    line-height: 24px;
    letter-spacing: -.015em;
    color: rgba(34,34,34,.3)
}

.search .input_search::placeholder {
    font-weight: 400;
    font-size: 20px;
    line-height: 24px;
    letter-spacing: -.015em;
    color: rgba(34,34,34,.3)
}

.search .btn_search_delete {
    float: right;
    width: 24px;
    height: 24px;
    margin-top: 3px;
    margin-right: 3px
}

.layer_search .search {
    width: 100%;
    margin: 0
}

.layer_search .search .input_search {
    width: 770px
}

.search_list {
    display: -webkit-box
}

.search_item {
    position: relative;
    padding: 3px 12px;
    display: inline-block;
    line-height: 25px;
    border: 1px solid #ebebeb;
    border-radius: 20px;
    margin: 0 6px 8px 0;
    cursor: pointer
}

.search_item .search_item_text {
    max-width: 144.5px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.8);
    padding-right: 14px;
    display: block;
    letter-spacing: normal
}

.search_item .search_item_text:hover {
    font-weight: 700;
    color: #222
}

.search_item .ico-delete-gray {
    cursor: pointer;
    position: absolute;
    top: 4px;
    right: 4px
}

.layer_search_item {
    display: block;
    padding-bottom: 40px
}

.layer_search_title_wrap {
    margin-bottom: 12px
}

.layer_search_title_wrap .title {
    font-size: 16px;
    font-weight: 700
}

.layer_search_title_wrap .title_sub_text {
    display: inline;
    margin-left: 5px;
    font-size: 13px;
    color: rgba(34,34,34,.8)
}

.layer_search_title_wrap .title_sub_text a {
    text-decoration: underline
}

.layer_search_title_wrap .title_sub_text span {
    cursor: unset
}

.md .title_sub_text,.mo .title_sub_text,.sm .title_sub_text {
    float: right
}

.layer_search_item.recent_keywords {
    padding-bottom: 32px
}

.layer_search_item.tag {
    padding-bottom: 28px
}

.layer_search_item.ranking {
    padding-bottom: 24px
}

.search_card_ranking {
    -webkit-column-count: 2;
    -moz-column-count: 2;
    column-count: 2;
    list-style: none;
    line-height: 17px;
    font-size: 14px
}

.search_card_ranking .search_card_ranking_item {
    padding: 4px 0 16px;
    cursor: pointer;
    display: flex
}

.search_card_ranking .ranking_idx {
    font-weight: 600;
    margin-right: 6px
}

.search_card_ranking .ranking_title {
    font-weight: 400;
    margin-right: 6px;
    max-width: 108px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: inline-block;
    white-space: nowrap
}

.search_card_ranking .ranking_description {
    font-size: 10px;
    color: #f15746;
    line-height: 12px;
    font-weight: 600
}

.shortcut_items {
    display: grid;
    grid-template-columns: repeat(5,minmax(0,1fr));
    grid-column-gap: 8px;
    -webkit-column-gap: 8px;
    -moz-column-gap: 8px;
    column-gap: 8px;
    grid-row-gap: 12px;
    row-gap: 12px
}

.shortcut_item {
    text-align: center;
    cursor: pointer
}

.shortcut_item_img_wrap {
    padding-top: 100%;
    position: relative;
    overflow: hidden;
    border: 1px solid #f0f0f0;
    color: #f0f0f0;
    isolation: isolate;
    border-radius: 50%
}

.lg .shortcut_item_img_wrap {
    padding-top: 0;
    height: 80px;
    border-radius: 10px
}

.shortcut_item_img_wrap>.shortcut_item_img_bg {
    position: absolute;
    top: 0;
    height: 100%
}

.shortcut_item_title {
    width: 100%;
    font-size: 13px;
    display: -webkit-box;
    letter-spacing: -.7px;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    overflow: hidden;
    text-overflow: ellipsis;
    word-break: keep-all;
    margin-top: 6px;
    word-wrap: break-word
}

.lg .shortcut_item_title {
    margin-top: 8px
}

.lg .shortcut_item_img_bg {
    -webkit-transform: translateZ(10px);
    transform: translateZ(10px)
}

.search_card_tag_wrap {
    line-height: 13px
}

.search_card_tag {
    max-width: 142px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.8);
    background: #f4f4f4;
    border: 1px solid #ebebeb;
    border-radius: 20px;
    padding: 8px 12px;
    display: inline-block;
    margin: 0 8px 12px 0
}

.recent_product_wrap {
    overflow-x: auto;
    overflow-y: hidden
}

.recent_product_wrap .recent_product_list {
    width: -webkit-max-content;
    width: -moz-max-content;
    width: max-content;
    display: flex;
    flex-wrap: wrap;
    padding-bottom: 15px
}

.recent_product {
    width: 80px;
    display: inline-block;
    margin-right: 8px
}

.recent_product .image,.recent_product .product_img,.recent_product .recent_product_img_wrap {
    width: 80px;
    height: 80px;
    border-radius: 10px
}

.recent_product_name {
    font-size: 11px;
    display: -webkit-box;
    letter-spacing: -.7px;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    overflow: hidden;
    text-overflow: ellipsis;
    word-break: keep-all;
    margin-top: 6px;
    word-wrap: break-word
}

.layer_search {
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    height: 100%;
    background-color: rgba(34,34,34,.5);
    overflow-y: auto
}

.layer_search .layer_container {
    border-radius: unset!important;
    width: unset;
    position: unset;
    -webkit-transform: unset;
    transform: unset;
    height: 100%;
    overflow-y: scroll
}

.layer_search .search_container,.layer_search .search_content_wrap,.layer_search .suggest_wrap {
    background-color: #fff
}

.layer_search .search_wrap {
    display: flex
}

.layer_search .search_wrap .search_area {
    flex: 1
}

.layer_search .search_wrap .btn_close {
    margin-left: auto
}

.layer_search .search_list {
    margin-top: 4px
}

.lg .layer_search .has_notice {
    top: 32px
}

.lg .layer_search .search_content_wrap,.lg .layer_search .search_wrap,.lg .layer_search .suggest_area {
    width: 800px;
    padding-left: 0;
    padding-right: 0;
    margin: 0 auto;
    overflow: hidden
}

.lg .layer_search .suggest_area .suggest_keyword,.lg .layer_search .suggest_area .suggest_title_area {
    padding-left: 0;
    padding-right: 0
}

.lg .layer_search .search_content_wrap {
    margin-top: 20px
}

.lg .layer_search .search_content_wrap>:last-child {
    margin-bottom: 56px
}

.lg .layer_search .search_wrap {
    padding-top: 50px
}

.lg .layer_search .btn_close {
    display: none
}

.md .layer_search .search_content_wrap,.mo .layer_search .search_content_wrap,.sm .layer_search .search_content_wrap {
    height: calc(100vh - 65px);
    padding: 20px 16px
}

.md .layer_search .search_content_wrap>:last-child,.mo .layer_search .search_content_wrap>:last-child,.sm .layer_search .search_content_wrap>:last-child {
    padding-bottom: 58px
}

.md .layer_search .search_wrap,.mo .layer_search .search_wrap,.sm .layer_search .search_wrap {
    padding: 12px 16px;
    border-bottom: 1px solid #ebebeb
}

.md .layer_search .search_wrap .search_area,.mo .layer_search .search_wrap .search_area,.sm .layer_search .search_wrap .search_area {
    margin-right: 15px
}

.md .layer_search .search_wrap .btn_close,.mo .layer_search .search_wrap .btn_close,.sm .layer_search .search_wrap .btn_close {
    font-size: 15px
}

.md .layer_search .suggest_area,.mo .layer_search .suggest_area,.sm .layer_search .suggest_area {
    padding: 0
}

.suggest_area {
    position: relative;
    padding: 0 44px 23px 40px
}

@media(max-width: 359px) {
    .layer_search .search_wrap .search_area {
        margin-right:15px
    }
}

.search_card_items .layer_search_item:last-child {
    padding-bottom: 40px
}

.main {
    width: 100%;
    height: calc(100vh - 100px);
    position: relative
}

.container {
    display: table;
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0
}

.wrap_exception {
    display: table-cell;
    vertical-align: middle;
    text-align: center
}

.wrap_content {
    top: 0;
    left: 0;
    margin-top: 0;
    height: auto;
    margin-left: 0
}

.wrap_content .illust {
    width: 360px;
    height: 240px;
    -o-object-fit: contain;
    object-fit: contain;
    background-color: #fff;
    margin: 0
}

.wrap_content .title {
    font-size: 20px;
    font-weight: 400;
    font-stretch: normal;
    font-style: normal;
    letter-spacing: -.2px;
    color: #000;
    margin-top: 20px
}

.wrap_content .sub-title {
    color: rgba(34,34,34,.6);
    margin-top: 8px
}

.wrap_content .button-home,.wrap_content .sub-title {
    font-size: 13px;
    font-weight: 300;
    font-stretch: normal;
    font-style: normal;
    letter-spacing: normal
}

.wrap_content .button-home {
    width: 103px;
    height: 36px;
    border-radius: 8px;
    border: 1px solid rgba(0,0,0,.6);
    margin-top: 20px;
    cursor: pointer;
    line-height: 2;
    color: #000
}

@media(max-width: 768px) {
    .container {
        background-color:#f8f8f8
    }

    .wrap_content .illust {
        background: transparent;
        width: 260px;
        height: auto
    }

    .wrap_content .title {
        font-size: 16px;
        letter-spacing: -.32px;
        color: #222;
        margin: 0
    }

    .wrap_content .sub-title {
        font-size: 13px;
        font-weight: 300;
        color: rgba(34,34,34,.6);
        margin-top: 4px
    }

    .wrap_content button {
        width: 103px;
        height: 36px;
        border-radius: 8px;
        border: 1px solid rgba(0,0,0,.6);
        margin-top: 16px;
        background: transparent
    }
}

.wrap {
    width: 100%;
    height: 100vh;
    margin: 0 auto
}

.wrap .main {
    height: 100vh
}

.nuxt-progress {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    height: 2px;
    width: 0;
    opacity: 1;
    transition: width .1s,opacity .4s;
    background-color: #000;
    z-index: 999999
}

.nuxt-progress.nuxt-progress-notransition {
    transition: none
}

.nuxt-progress-failed {
    background-color: red
}

body,button,dd,div,dl,dt,fieldset,figcaption,figure,form,h1,h2,h3,h4,h5,h6,input,legend,li,ol,p,select,table,td,textarea,th,ul {
    margin: 0;
    padding: 0
}

body,html {
    height: 100%;
    -ms-text-size-adjust: none;
    -moz-text-size-adjust: none;
    -webkit-text-size-adjust: none;
    -moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
    -webkit-overflow-scrolling: touch;
    touch-action: manipulation;
    -webkit-font-feature-settings: "frac" 0,"numr" 0;
    font-feature-settings: "frac" 0,"numr" 0
}

body,button,input,select,table,textarea {
    font-family: Pretendard Variable,Pretendard,-apple-system,BlinkMacSystemFont,system-ui,Segoe UI,Roboto,Ubuntu,Cantarell,Noto Sans,sans-serif,Helvetica Neue,Apple SD Gothic Neo,Noto Sans KR,Malgun Gothic,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol;
    color: #222;
    -webkit-font-feature-settings: "frac" 0,"numr" 0;
    font-feature-settings: "frac" 0,"numr" 0
}

body[class*=fixed_],div[class*=fixed_] {
    overflow: hidden
}

body:focus,div:focus {
    outline-width: 0;
    outline: none
}

input,textarea {
    padding: 0;
    outline: 0;
    border: 0;
    resize: none;
    border-radius: 0;
    -webkit-appearance: none;
    background-color: transparent
}

input[type=text]::-ms-clear {
    display: none
}

input::placeholder {
    color: rgba(34,34,34,.3)
}

input::-webkit-input-placeholder {
    color: rgba(34,34,34,.3)
}

input::-moz-placeholder {
    color: rgba(34,34,34,.3)
}

input:focus::placeholder {
    color: transparent
}

input:focus::-webkit-input-placeholder {
    color: transparent
}

input:focus:-ms-input-placeholder {
    color: transparent
}

input:focus::-moz-placeholder {
    color: transparent
}

input.text_fill:disabled {
    opacity: 1;
    -webkit-text-fill-color: inherit
}

input.show_placeholder_on_focus:focus::-webkit-input-placeholder {
    color: rgba(34,34,34,.3)
}

input.show_placeholder_on_focus:focus:-ms-input-placeholder-ms-input-placeholder,input.show_placeholder_on_focus:focus::-moz-placeholder,input.show_placeholder_on_focus:focus::-webkit-input-placeholder,input.show_placeholder_on_focus:focus::placeholder {
    color: rgba(34,34,34,.3)
}

input[type=number] {
    -moz-appearance: textfield
}

input[type=number]::-webkit-inner-spin-button,input[type=number]::-webkit-outer-spin-button {
    margin: 0;
    -webkit-appearance: none
}

input:-webkit-autofill,input:-webkit-autofill:active,input:-webkit-autofill:focus,input:-webkit-autofill:hover {
    -webkit-box-shadow: 0 0 0 30px #fff inset
}

button {
    padding: 0;
    border: 0;
    outline: none;
    background: none;
    background-color: transparent;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: 0
}

fieldset {
    border: 0
}

img,video {
    border: 0;
    vertical-align: top;
    -moz-user-select: none!important;
    user-select: none!important;
    -webkit-user-drag: none;
    -webkit-touch-callout: none;
    -webkit-user-select: none
}

li,ol,ul {
    list-style: none
}

table {
    table-layout: fixed;
    width: 100%;
    border-spacing: 0;
    border: 0;
    border-collapse: collapse
}

address,em {
    font-style: normal
}

a {
    color: inherit;
    -webkit-tap-highlight-color: rgba(0,0,0,.1)
}

a,a:active,a:focus,a:hover {
    text-decoration: none
}

.blind,.u_skip {
    overflow: hidden!important;
    position: absolute!important;
    clip: rect(0,0,0,0)!important;
    width: 1px!important;
    height: 1px!important;
    margin: -1px!important
}

*,:after,:before {
    box-sizing: border-box;
    -webkit-tap-highlight-color: rgba(0,0,0,0)
}

[role=button] {
    cursor: pointer
}

[class*=brand-] {
    width: auto;
    height: 20px
}

.brand-text {
    overflow: hidden;
    display: inline-block;
    vertical-align: top;
    height: 17px;
    line-height: 17px;
    padding-bottom: 2px;
    font-size: 13px;
    font-weight: 700;
    color: #222;
    white-space: nowrap;
    text-overflow: ellipsis;
    width: -webkit-fit-content;
    width: -moz-fit-content;
    width: fit-content;
    max-width: 100%
}

.brand-text.long-name {
    letter-spacing: -.5px
}

.mo .brand-text.long-name,.sm .brand-text.long-name {
    font-size: 10px
}

.lg .brand-text.long-name,.md .brand-text.long-name {
    font-size: 12px
}

[class*=ico-] {
    width: 24px;
    height: 24px
}

.br_pc {
    display: block
}

.br_mo {
    display: none
}

.is_hidden {
    display: none!important
}

@media(max-width: 768px) {
    .br_pc {
        display:none
    }

    .br_mo {
        display: block
    }
}

.page-enter-active {
    -webkit-animation: erase-in .3s;
    animation: erase-in .3s
}

.page-leave-active {
    -webkit-animation: erase-out .1s;
    animation: erase-out .1s
}

@-webkit-keyframes erase-in {
    0% {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 0
    }

    to {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 1
    }
}

@keyframes erase-in {
    0% {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 0
    }

    to {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 1
    }
}

@-webkit-keyframes erase-out {
    0% {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 1
    }

    to {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 0
    }
}

@keyframes erase-out {
    0% {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 1
    }

    to {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 0
    }
}

@-webkit-keyframes op-erase-in {
    0% {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: .4
    }

    to {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 1
    }
}

@keyframes op-erase-in {
    0% {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: .4
    }

    to {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 1
    }
}

@-webkit-keyframes op-erase-out {
    0% {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 1
    }

    to {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: .2
    }
}

@keyframes op-erase-out {
    0% {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 1
    }

    to {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: .2
    }
}

@-webkit-keyframes liked {
    0% {
        -webkit-transform: scale(.8);
        transform: scale(.8)
    }

    50% {
        -webkit-transform: scale(1.1);
        transform: scale(1.1)
    }

    to {
        -webkit-transform: scale(1);
        transform: scale(1)
    }
}

@keyframes liked {
    0% {
        -webkit-transform: scale(.8);
        transform: scale(.8)
    }

    50% {
        -webkit-transform: scale(1.1);
        transform: scale(1.1)
    }

    to {
        -webkit-transform: scale(1);
        transform: scale(1)
    }
}

.kream-op-enter,.kream-op-enter-active {
    -webkit-animation: op-erase-in .7s;
    animation: op-erase-in .7s
}

.kream-op-leave,.kream-op-leave-active {
    -webkit-animation: op-erase-out .7s;
    animation: op-erase-out .7s
}

.kream-op-speedy-enter,.kream-op-speedy-enter-active {
    -webkit-animation: erase-in .5s;
    animation: erase-in .5s
}

.kream-op-speedy-leave,.kream-op-speedy-leave-active {
    -webkit-animation: erase-out .3s;
    animation: erase-out .3s
}

#__layout {
    opacity: 1
}

#__nuxt[data-server-rendered] #__layout {
    opacity: 0
}

.whitespace-pre-line {
    white-space: pre-line
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.0.26ae273.woff2) format("woff2-variations");
    unicode-range: u+f9ca-fa0b,u+ff03-ff05,u+ff07,u+ff0a-ff0b,u+ff0d-ff19,u+ff1b,u+ff1d,u+ff20-ff5b,u+ff5d,u+ffe0-ffe3,u+ffe5-ffe6
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.1.9187837.woff2) format("woff2-variations");
    unicode-range: u+d723-d728,u+d72a-d733,u+d735-d748,u+d74a-d74f,u+d752-d753,u+d755-d757,u+d75a-d75f,u+d762-d764,u+d766-d768,u+d76a-d76b,u+d76d-d76f,u+d771-d787,u+d789-d78b,u+d78d-d78f,u+d791-d797,u+d79a,u+d79c,u+d79e-d7a3,u+f900-f909,u+f90b-f92e
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.2.35e0398.woff2) format("woff2-variations");
    unicode-range: u+d679-d68b,u+d68e-d69e,u+d6a0,u+d6a2-d6a7,u+d6a9-d6c3,u+d6c6-d6c7,u+d6c9-d6cb,u+d6cd-d6d3,u+d6d5-d6d6,u+d6d8-d6e3,u+d6e5-d6e7,u+d6e9-d6fb,u+d6fd-d717,u+d719-d71f,u+d721-d722
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.3.383aad0.woff2) format("woff2-variations");
    unicode-range: u+d5bc-d5c7,u+d5ca-d5cb,u+d5cd-d5cf,u+d5d1-d5d7,u+d5d9-d5da,u+d5dc,u+d5de-d5e3,u+d5e6-d5e7,u+d5e9-d5eb,u+d5ed-d5f6,u+d5f8,u+d5fa-d5ff,u+d602-d603,u+d605-d607,u+d609-d60f,u+d612-d613,u+d616-d61b,u+d61d-d637,u+d63a-d63b,u+d63d-d63f,u+d641-d647,u+d64a-d64c,u+d64e-d653,u+d656-d657,u+d659-d65b,u+d65d-d666,u+d668,u+d66a-d678
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.4.ff86ef2.woff2) format("woff2-variations");
    unicode-range: u+d507,u+d509-d50b,u+d50d-d513,u+d515-d53b,u+d53e-d53f,u+d541-d543,u+d545-d54c,u+d54e,u+d550,u+d552-d557,u+d55a-d55b,u+d55d-d55f,u+d561-d564,u+d566-d567,u+d56a,u+d56c,u+d56e-d573,u+d576-d577,u+d579-d583,u+d585-d586,u+d58a-d5a4,u+d5a6-d5bb
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.5.60aa590.woff2) format("woff2-variations");
    unicode-range: u+d464-d477,u+d47a-d47b,u+d47d-d47f,u+d481-d487,u+d489-d48a,u+d48c,u+d48e-d4e7,u+d4e9-d503,u+d505-d506
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.6.f8af7b9.woff2) format("woff2-variations");
    unicode-range: u+d3bf-d3c7,u+d3ca-d3cf,u+d3d1-d3eb,u+d3ee-d3ef,u+d3f1-d3f3,u+d3f5-d3fb,u+d3fd-d400,u+d402-d45b,u+d45d-d463
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.7.955548f.woff2) format("woff2-variations");
    unicode-range: u+d2ff,u+d302-d304,u+d306-d30b,u+d30f,u+d311-d313,u+d315-d31b,u+d31e,u+d322-d324,u+d326-d327,u+d32a-d32b,u+d32d-d32f,u+d331-d337,u+d339-d33c,u+d33e-d37b,u+d37e-d37f,u+d381-d383,u+d385-d38b,u+d38e-d390,u+d392-d397,u+d39a-d39b,u+d39d-d39f,u+d3a1-d3a7,u+d3a9-d3aa,u+d3ac,u+d3ae-d3b3,u+d3b5-d3b7,u+d3b9-d3bb,u+d3bd-d3be
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.8.aca6a92.woff2) format("woff2-variations");
    unicode-range: u+d257-d27f,u+d281-d29b,u+d29d-d29f,u+d2a1-d2ab,u+d2ad-d2b7,u+d2ba-d2bb,u+d2bd-d2bf,u+d2c1-d2c7,u+d2c9-d2ef,u+d2f2-d2f3,u+d2f5-d2f7,u+d2f9-d2fe
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.9.2bc06ba.woff2) format("woff2-variations");
    unicode-range: u+d1b4,u+d1b6-d1f3,u+d1f5-d22b,u+d22e-d22f,u+d231-d233,u+d235-d23b,u+d23d-d240,u+d242-d256
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.10.26d78b0.woff2) format("woff2-variations");
    unicode-range: u+d105-d12f,u+d132-d133,u+d135-d137,u+d139-d13f,u+d141-d142,u+d144,u+d146-d14b,u+d14e-d14f,u+d151-d153,u+d155-d15b,u+d15e-d187,u+d189-d19f,u+d1a2-d1a3,u+d1a5-d1a7,u+d1a9-d1af,u+d1b2-d1b3
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.11.a28f778.woff2) format("woff2-variations");
    unicode-range: u+d04b-d04f,u+d051-d057,u+d059-d06b,u+d06d-d06f,u+d071-d073,u+d075-d07b,u+d07e-d0a3,u+d0a6-d0a7,u+d0a9-d0ab,u+d0ad-d0b3,u+d0b6,u+d0b8,u+d0ba-d0bf,u+d0c2-d0c3,u+d0c5-d0c7,u+d0c9-d0cf,u+d0d2,u+d0d6-d0db,u+d0de-d0df,u+d0e1-d0e3,u+d0e5-d0eb,u+d0ee-d0f0,u+d0f2-d104
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.12.e8e4bb9.woff2) format("woff2-variations");
    unicode-range: u+cfa2-cfc3,u+cfc5-cfdf,u+cfe2-cfe3,u+cfe5-cfe7,u+cfe9-cff4,u+cff6-cffb,u+cffd-cfff,u+d001-d003,u+d005-d017,u+d019-d033,u+d036-d037,u+d039-d03b,u+d03d-d04a
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.13.daa892d.woff2) format("woff2-variations");
    unicode-range: u+cef0-cef3,u+cef6,u+cef9-ceff,u+cf01-cf03,u+cf05-cf07,u+cf09-cf0f,u+cf11-cf12,u+cf14-cf1b,u+cf1d-cf1f,u+cf21-cf2f,u+cf31-cf53,u+cf56-cf57,u+cf59-cf5b,u+cf5d-cf63,u+cf66,u+cf68,u+cf6a-cf6f,u+cf71-cf84,u+cf86-cf8b,u+cf8d-cfa1
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.14.4fe9058.woff2) format("woff2-variations");
    unicode-range: u+ce3c-ce57,u+ce5a-ce5b,u+ce5d-ce5f,u+ce61-ce67,u+ce6a,u+ce6c,u+ce6e-ce73,u+ce76-ce77,u+ce79-ce7b,u+ce7d-ce83,u+ce85-ce88,u+ce8a-ce8f,u+ce91-ce93,u+ce95-ce97,u+ce99-ce9f,u+cea2,u+cea4-ceab,u+cead-cee3,u+cee6-cee7,u+cee9-ceeb,u+ceed-ceef
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.15.c30724f.woff2) format("woff2-variations");
    unicode-range: u+cd92-cd93,u+cd96-cd97,u+cd99-cd9b,u+cd9d-cda3,u+cda6-cda8,u+cdaa-cdaf,u+cdb1-cdc3,u+cdc5-cdcb,u+cdcd-cde7,u+cde9-ce03,u+ce05-ce1f,u+ce22-ce34,u+ce36-ce3b
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.16.fcb3547.woff2) format("woff2-variations");
    unicode-range: u+ccef-cd07,u+cd0a-cd0b,u+cd0d-cd1a,u+cd1c,u+cd1e-cd2b,u+cd2d-cd5b,u+cd5d-cd77,u+cd79-cd91
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.17.f78e3b4.woff2) format("woff2-variations");
    unicode-range: u+cc3f-cc43,u+cc46-cc47,u+cc49-cc4b,u+cc4d-cc53,u+cc55-cc58,u+cc5a-cc5f,u+cc61-cc97,u+cc9a-cc9b,u+cc9d-cc9f,u+cca1-cca7,u+ccaa,u+ccac,u+ccae-ccb3,u+ccb6-ccb7,u+ccb9-ccbb,u+ccbd-cccf,u+ccd1-cce3,u+cce5-ccee
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.18.25cb43a.woff2) format("woff2-variations");
    unicode-range: u+cb91-cbd3,u+cbd5-cbe3,u+cbe5-cc0b,u+cc0e-cc0f,u+cc11-cc13,u+cc15-cc1b,u+cc1d-cc20,u+cc23-cc27,u+cc2a-cc2b,u+cc2d,u+cc2f,u+cc31-cc37,u+cc3a,u+cc3c
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.19.0504ba1.woff2) format("woff2-variations");
    unicode-range: u+caf4-cb47,u+cb4a-cb90
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.20.6c759a1.woff2) format("woff2-variations");
    unicode-range: u+ca4a-ca4b,u+ca4e-ca4f,u+ca51-ca53,u+ca55-ca5b,u+ca5d-ca60,u+ca62-ca83,u+ca85-cabb,u+cabe-cabf,u+cac1-cac3,u+cac5-cacb,u+cacd-cad0,u+cad2,u+cad4-cad8,u+cada-caf3
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.21.31fafab.woff2) format("woff2-variations");
    unicode-range: u+c996-c997,u+c99a-c99c,u+c99e-c9bf,u+c9c2-c9c3,u+c9c5-c9c7,u+c9c9-c9cf,u+c9d2,u+c9d4,u+c9d7-c9d8,u+c9db,u+c9de-c9df,u+c9e1-c9e3,u+c9e5-c9e6,u+c9e8-c9eb,u+c9ee-c9f0,u+c9f2-c9f7,u+c9f9-ca0b,u+ca0d-ca28,u+ca2a-ca49
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.22.32de2a5.woff2) format("woff2-variations");
    unicode-range: u+c8e9-c8f4,u+c8f6-c8fb,u+c8fe-c8ff,u+c901-c903,u+c905-c90b,u+c90e-c910,u+c912-c917,u+c919-c92b,u+c92d-c94f,u+c951-c953,u+c955-c96b,u+c96d-c973,u+c975-c987,u+c98a-c98b,u+c98d-c98f,u+c991-c995
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.23.cc6f5bc.woff2) format("woff2-variations");
    unicode-range: u+c841-c84b,u+c84d-c86f,u+c872-c873,u+c875-c877,u+c879-c87f,u+c882-c884,u+c887-c88a,u+c88d-c8c3,u+c8c5-c8df,u+c8e1-c8e8
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.24.e5c6cdb.woff2) format("woff2-variations");
    unicode-range: u+c779-c77b,u+c77e-c782,u+c786,u+c78b,u+c78d,u+c78f,u+c792-c793,u+c795,u+c797,u+c799-c79f,u+c7a2,u+c7a7-c7ab,u+c7ae-c7bb,u+c7bd-c7c0,u+c7c2-c7c7,u+c7c9-c7dc,u+c7de-c7ff,u+c802-c803,u+c805-c807,u+c809,u+c80b-c80f,u+c812,u+c814,u+c817-c81b,u+c81e-c81f,u+c821-c823,u+c825-c82e,u+c830-c837,u+c839-c83b,u+c83d-c840
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.25.e0f4b04.woff2) format("woff2-variations");
    unicode-range: u+c6bb-c6bf,u+c6c2,u+c6c4,u+c6c6-c6cb,u+c6ce-c6cf,u+c6d1-c6d3,u+c6d5-c6db,u+c6dd-c6df,u+c6e1-c6e7,u+c6e9-c6eb,u+c6ed-c6ef,u+c6f1-c6f8,u+c6fa-c703,u+c705-c707,u+c709-c70b,u+c70d-c716,u+c718,u+c71a-c71f,u+c722-c723,u+c725-c727,u+c729-c734,u+c736-c73b,u+c73e-c73f,u+c741-c743,u+c745-c74b,u+c74e-c750,u+c752-c757,u+c759-c773,u+c776-c777
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.26.f675b52.woff2) format("woff2-variations");
    unicode-range: u+c5f5-c5fb,u+c5fe,u+c602-c605,u+c607,u+c609-c60f,u+c611-c61a,u+c61c-c623,u+c626-c627,u+c629-c62b,u+c62d,u+c62f-c632,u+c636,u+c638,u+c63a-c63f,u+c642-c643,u+c645-c647,u+c649-c652,u+c656-c65b,u+c65d-c65f,u+c661-c663,u+c665-c677,u+c679-c67b,u+c67d-c693,u+c696-c697,u+c699-c69b,u+c69d-c6a3,u+c6a6,u+c6a8,u+c6aa-c6af,u+c6b2-c6b3,u+c6b5-c6b7,u+c6b9-c6ba
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.27.a441f4b.woff2) format("woff2-variations");
    unicode-range: u+c517-c527,u+c52a-c52b,u+c52d-c52f,u+c531-c538,u+c53a,u+c53c,u+c53e-c543,u+c546-c547,u+c54b,u+c54d-c552,u+c556,u+c55a-c55b,u+c55d,u+c55f,u+c562-c563,u+c565-c567,u+c569-c56f,u+c572,u+c574,u+c576-c57b,u+c57e-c57f,u+c581-c583,u+c585-c586,u+c588-c58b,u+c58e,u+c590,u+c592-c596,u+c599-c5b3,u+c5b6-c5b7,u+c5ba,u+c5be-c5c3,u+c5ca-c5cb,u+c5cd,u+c5cf,u+c5d2-c5d3,u+c5d5-c5d7,u+c5d9-c5df,u+c5e1-c5e2,u+c5e4,u+c5e6-c5eb,u+c5ef,u+c5f1-c5f3
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.28.7bd526a.woff2) format("woff2-variations");
    unicode-range: u+c475-c4ef,u+c4f2-c4f3,u+c4f5-c4f7,u+c4f9-c4ff,u+c502-c50b,u+c50d-c516
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.29.83e99b8.woff2) format("woff2-variations");
    unicode-range: u+c3d0-c3d7,u+c3da-c3db,u+c3dd-c3de,u+c3e1-c3ec,u+c3ee-c3f3,u+c3f5-c42b,u+c42d-c463,u+c466-c474
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.30.409b829.woff2) format("woff2-variations");
    unicode-range: u+c32b-c367,u+c36a-c36b,u+c36d-c36f,u+c371-c377,u+c37a-c37b,u+c37e-c383,u+c385-c387,u+c389-c3cf
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.31.9698b9e.woff2) format("woff2-variations");
    unicode-range: u+c26a-c26b,u+c26d-c26f,u+c271-c273,u+c275-c27b,u+c27e-c287,u+c289-c28f,u+c291-c297,u+c299-c29a,u+c29c-c2a3,u+c2a5-c2a7,u+c2a9-c2ab,u+c2ad-c2b3,u+c2b6,u+c2b8,u+c2ba-c2bb,u+c2bd-c2db,u+c2de-c2df,u+c2e1-c2e2,u+c2e5-c2ea,u+c2ee,u+c2f0,u+c2f2-c2f5,u+c2f7,u+c2fa-c2fb,u+c2fd-c2ff,u+c301-c307,u+c309-c30c,u+c30e-c312,u+c315-c323,u+c325-c328,u+c32a
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.32.d561d71.woff2) format("woff2-variations");
    unicode-range: u+c1bc-c1c3,u+c1c5-c1df,u+c1e1-c1fb,u+c1fd-c203,u+c205-c20c,u+c20e,u+c210-c217,u+c21a-c21b,u+c21d-c21e,u+c221-c227,u+c229-c22a,u+c22c,u+c22e,u+c230,u+c233-c24f,u+c251-c257,u+c259-c269
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.33.eff4656.woff2) format("woff2-variations");
    unicode-range: u+c101-c11b,u+c11f,u+c121-c123,u+c125-c12b,u+c12e,u+c132-c137,u+c13a-c13b,u+c13d-c13f,u+c141-c147,u+c14a,u+c14c-c153,u+c155-c157,u+c159-c15b,u+c15d-c166,u+c169-c16f,u+c171-c177,u+c179-c18b,u+c18e-c18f,u+c191-c193,u+c195-c19b,u+c19d-c19e,u+c1a0,u+c1a2-c1a4,u+c1a6-c1bb
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.34.d9a6ace.woff2) format("woff2-variations");
    unicode-range: u+c049-c057,u+c059-c05b,u+c05d-c05f,u+c061-c067,u+c069-c08f,u+c091-c0ab,u+c0ae-c0af,u+c0b1-c0b3,u+c0b5,u+c0b7-c0bb,u+c0be,u+c0c2-c0c7,u+c0ca-c0cb,u+c0cd-c0cf,u+c0d1-c0d7,u+c0d9-c0da,u+c0dc,u+c0de-c0e3,u+c0e5-c0eb,u+c0ed-c0f3,u+c0f6,u+c0f8,u+c0fa-c0ff
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.35.fd76dee.woff2) format("woff2-variations");
    unicode-range: u+bfa7-bfaf,u+bfb1-bfc4,u+bfc6-bfcb,u+bfce-bfcf,u+bfd1-bfd3,u+bfd5-bfdb,u+bfdd-c048
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.36.402d93b.woff2) format("woff2-variations");
    unicode-range: u+bf07,u+bf09-bf3f,u+bf41-bf4f,u+bf52-bf54,u+bf56-bfa6
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.37.31f430f.woff2) format("woff2-variations");
    unicode-range: u+be56,u+be58,u+be5c-be5f,u+be62-be63,u+be65-be67,u+be69-be74,u+be76-be7b,u+be7e-be7f,u+be81-be8e,u+be90,u+be92-bea7,u+bea9-becf,u+bed2-bed3,u+bed5-bed6,u+bed9-bee3,u+bee6-bf06
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.38.ad72e93.woff2) format("woff2-variations");
    unicode-range: u+bdb0-bdd3,u+bdd5-bdef,u+bdf1-be0b,u+be0d-be0f,u+be11-be13,u+be15-be43,u+be46-be47,u+be49-be4b,u+be4d-be53
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.39.192b28b.woff2) format("woff2-variations");
    unicode-range: u+bd03,u+bd06,u+bd08,u+bd0a-bd0f,u+bd11-bd22,u+bd25-bd47,u+bd49-bd58,u+bd5a-bd7f,u+bd82-bd83,u+bd85-bd87,u+bd8a-bd8f,u+bd91-bd92,u+bd94,u+bd96-bd98,u+bd9a-bdaf
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.40.b620d4d.woff2) format("woff2-variations");
    unicode-range: u+bc4e-bc83,u+bc86-bc87,u+bc89-bc8b,u+bc8d-bc93,u+bc96,u+bc98,u+bc9b-bc9f,u+bca2-bca3,u+bca5-bca7,u+bca9-bcb2,u+bcb4-bcbb,u+bcbe-bcbf,u+bcc1-bcc3,u+bcc5-bccc,u+bcce-bcd0,u+bcd2-bcd4,u+bcd6-bcf3,u+bcf7,u+bcf9-bcfb,u+bcfd-bd02
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.41.c736c05.woff2) format("woff2-variations");
    unicode-range: u+bb90-bba3,u+bba5-bbab,u+bbad-bbbf,u+bbc1-bbf7,u+bbfa-bbfb,u+bbfd-bbfe,u+bc01-bc07,u+bc09-bc0a,u+bc0e,u+bc10,u+bc12-bc13,u+bc17,u+bc19-bc1a,u+bc1e,u+bc20-bc23,u+bc26,u+bc28,u+bc2a-bc2c,u+bc2e-bc2f,u+bc32-bc33,u+bc35-bc37,u+bc39-bc3f,u+bc41-bc42,u+bc44,u+bc46-bc48,u+bc4a-bc4d
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.42.e45e8e8.woff2) format("woff2-variations");
    unicode-range: u+bae6-bafb,u+bafd-bb17,u+bb19-bb33,u+bb37,u+bb39-bb3a,u+bb3d-bb43,u+bb45-bb46,u+bb48,u+bb4a-bb4f,u+bb51-bb53,u+bb55-bb57,u+bb59-bb62,u+bb64-bb8f
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.43.dd6aeb4.woff2) format("woff2-variations");
    unicode-range: u+ba30-ba37,u+ba3a-ba3b,u+ba3d-ba3f,u+ba41-ba47,u+ba49-ba4a,u+ba4c,u+ba4e-ba53,u+ba56-ba57,u+ba59-ba5b,u+ba5d-ba63,u+ba65-ba66,u+ba68-ba6f,u+ba71-ba73,u+ba75-ba77,u+ba79-ba84,u+ba86,u+ba88-baa7,u+baaa,u+baad-baaf,u+bab1-bab7,u+baba,u+babc,u+babe-bae5
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.44.62f977f.woff2) format("woff2-variations");
    unicode-range: u+b96e-b973,u+b976-b977,u+b979-b97b,u+b97d-b983,u+b986,u+b988,u+b98a-b98d,u+b98f-b9ab,u+b9ae-b9af,u+b9b1-b9b3,u+b9b5-b9bb,u+b9be,u+b9c0,u+b9c2-b9c7,u+b9ca-b9cb,u+b9cd,u+b9d2-b9d7,u+b9da,u+b9dc,u+b9df-b9e0,u+b9e2,u+b9e6-b9e7,u+b9e9-b9f3,u+b9f6,u+b9f8,u+b9fb-ba2f
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.45.7938695.woff2) format("woff2-variations");
    unicode-range: u+b8bf-b8cb,u+b8cd-b8e0,u+b8e2-b8e7,u+b8ea-b8eb,u+b8ed-b8ef,u+b8f1-b8f7,u+b8fa,u+b8fc,u+b8fe-b903,u+b905-b917,u+b919-b91f,u+b921-b93b,u+b93d-b957,u+b95a-b95b,u+b95d-b95f,u+b961-b967,u+b969-b96c
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.46.352068e.woff2) format("woff2-variations");
    unicode-range: u+b80d-b80f,u+b811-b817,u+b81a,u+b81c-b823,u+b826-b827,u+b829-b82b,u+b82d-b833,u+b836,u+b83a-b83f,u+b841-b85b,u+b85e-b85f,u+b861-b863,u+b865-b86b,u+b86e,u+b870,u+b872-b8af,u+b8b1-b8be
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.47.b94e48a.woff2) format("woff2-variations");
    unicode-range: u+b74d-b75f,u+b761-b763,u+b765-b774,u+b776-b77b,u+b77e-b77f,u+b781-b783,u+b785-b78b,u+b78e,u+b792-b796,u+b79a-b79b,u+b79d-b7a7,u+b7aa,u+b7ae-b7b3,u+b7b6-b7c8,u+b7ca-b7eb,u+b7ee-b7ef,u+b7f1-b7f3,u+b7f5-b7fb,u+b7fe,u+b802-b806,u+b80a-b80b
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.48.3182927.woff2) format("woff2-variations");
    unicode-range: u+b6a7-b6aa,u+b6ac-b6b0,u+b6b2-b6ef,u+b6f1-b727,u+b72a-b72b,u+b72d-b72e,u+b731-b737,u+b739-b73a,u+b73c-b743,u+b745-b74c
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.49.796b6e3.woff2) format("woff2-variations");
    unicode-range: u+b605-b60f,u+b612-b617,u+b619-b624,u+b626-b69b,u+b69e-b6a3,u+b6a5-b6a6
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.50.024d04b.woff2) format("woff2-variations");
    unicode-range: u+b55f,u+b562-b583,u+b585-b59f,u+b5a2-b5a3,u+b5a5-b5a7,u+b5a9-b5b2,u+b5b5-b5ba,u+b5bd-b604
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.51.c4ea91a.woff2) format("woff2-variations");
    unicode-range: u+b4a5-b4b6,u+b4b8-b4bf,u+b4c1-b4c7,u+b4c9-b4db,u+b4de-b4df,u+b4e1-b4e2,u+b4e5-b4eb,u+b4ee,u+b4f0,u+b4f2-b513,u+b516-b517,u+b519-b51a,u+b51d-b523,u+b526,u+b528,u+b52b-b52f,u+b532-b533,u+b535-b537,u+b539-b53f,u+b541-b544,u+b546-b54b,u+b54d-b54f,u+b551-b55b,u+b55d-b55e
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.52.0e546c8.woff2) format("woff2-variations");
    unicode-range: u+b3f8-b3fb,u+b3fd-b40f,u+b411-b417,u+b419-b41b,u+b41d-b41f,u+b421-b427,u+b42a-b42b,u+b42d-b44f,u+b452-b453,u+b455-b457,u+b459-b45f,u+b462-b464,u+b466-b46b,u+b46d-b47f,u+b481-b4a3
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.53.c36488a.woff2) format("woff2-variations");
    unicode-range: u+b342-b353,u+b356-b357,u+b359-b35b,u+b35d-b35e,u+b360-b363,u+b366,u+b368,u+b36a-b36d,u+b36f,u+b372-b373,u+b375-b377,u+b379-b37f,u+b381-b382,u+b384,u+b386-b38b,u+b38d-b3c3,u+b3c6-b3c7,u+b3c9-b3ca,u+b3cd-b3d3,u+b3d6,u+b3d8,u+b3da-b3f7
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.54.2ebbff8.woff2) format("woff2-variations");
    unicode-range: u+b27c-b283,u+b285-b28f,u+b292-b293,u+b295-b297,u+b29a-b29f,u+b2a1-b2a4,u+b2a7-b2a9,u+b2ab,u+b2ad-b2c7,u+b2ca-b2cb,u+b2cd-b2cf,u+b2d1-b2d7,u+b2da,u+b2dc,u+b2de-b2e3,u+b2e7,u+b2e9-b2ea,u+b2ef-b2f3,u+b2f6,u+b2f8,u+b2fa-b2fb,u+b2fd-b2fe,u+b302-b303,u+b305-b307,u+b309-b30f,u+b312,u+b316-b31b,u+b31d-b341
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.55.57f384f.woff2) format("woff2-variations");
    unicode-range: u+b1d6-b1e7,u+b1e9-b1fc,u+b1fe-b203,u+b206-b207,u+b209-b20b,u+b20d-b213,u+b216-b21f,u+b221-b257,u+b259-b273,u+b275-b27b
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.56.1dd5cc3.woff2) format("woff2-variations");
    unicode-range: u+b120-b122,u+b126-b127,u+b129-b12b,u+b12d-b133,u+b136,u+b138,u+b13a-b13f,u+b142-b143,u+b145-b14f,u+b151-b153,u+b156-b157,u+b159-b177,u+b17a-b17b,u+b17d-b17f,u+b181-b187,u+b189-b18c,u+b18e-b191,u+b195-b1a7,u+b1a9-b1cb,u+b1cd-b1d5
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.57.2252ee7.woff2) format("woff2-variations");
    unicode-range: u+b05f-b07b,u+b07e-b07f,u+b081-b083,u+b085-b08b,u+b08d-b097,u+b09b,u+b09d-b09f,u+b0a2-b0a7,u+b0aa,u+b0b0,u+b0b2,u+b0b6-b0b7,u+b0b9-b0bb,u+b0bd-b0c3,u+b0c6-b0c7,u+b0ca-b0cf,u+b0d1-b0df,u+b0e1-b0e4,u+b0e6-b107,u+b10a-b10b,u+b10d-b10f,u+b111-b112,u+b114-b117,u+b119-b11a,u+b11c-b11f
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.58.488c760.woff2) format("woff2-variations");
    unicode-range: u+afac-afb7,u+afba-afbb,u+afbd-afbf,u+afc1-afc6,u+afca-afcc,u+afce-afd3,u+afd5-afe7,u+afe9-afef,u+aff1-b00b,u+b00d-b00f,u+b011-b013,u+b015-b01b,u+b01d-b027,u+b029-b043,u+b045-b047,u+b049,u+b04b,u+b04d-b052,u+b055-b056,u+b058-b05c,u+b05e
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.59.1a7d5ba.woff2) format("woff2-variations");
    unicode-range: u+af03-af07,u+af09-af2b,u+af2e-af33,u+af35-af3b,u+af3e-af40,u+af44-af47,u+af4a-af5c,u+af5e-af63,u+af65-af7f,u+af81-afab
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.60.e3d75b7.woff2) format("woff2-variations");
    unicode-range: u+ae56-ae5b,u+ae5e-ae60,u+ae62-ae64,u+ae66-ae67,u+ae69-ae6b,u+ae6d-ae83,u+ae85-aebb,u+aebf,u+aec1-aec3,u+aec5-aecb,u+aece,u+aed0,u+aed2-aed7,u+aed9-aef3,u+aef5-af02
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.61.c38df79.woff2) format("woff2-variations");
    unicode-range: u+ad9c-ada3,u+ada5-adbf,u+adc1-adc3,u+adc5-adc7,u+adc9-add2,u+add4-addb,u+addd-addf,u+ade1-ade3,u+ade5-adf7,u+adfa-adfb,u+adfd-adff,u+ae02-ae07,u+ae0a,u+ae0c,u+ae0e-ae13,u+ae15-ae2f,u+ae31-ae33,u+ae35-ae37,u+ae39-ae3f,u+ae42,u+ae44,u+ae46-ae49,u+ae4b,u+ae4f,u+ae51-ae53,u+ae55
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.62.abb0920.woff2) format("woff2-variations");
    unicode-range: u+ace2-ace3,u+ace5-ace6,u+ace9-acef,u+acf2,u+acf4,u+acf7-acfb,u+acfe-acff,u+ad01-ad03,u+ad05-ad0b,u+ad0d-ad10,u+ad12-ad1b,u+ad1d-ad33,u+ad35-ad48,u+ad4a-ad4f,u+ad51-ad6b,u+ad6e-ad6f,u+ad71-ad72,u+ad77-ad7c,u+ad7e,u+ad80,u+ad82-ad87,u+ad89-ad8b,u+ad8d-ad8f,u+ad91-ad9b
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.63.7ef6c0d.woff2) format("woff2-variations");
    unicode-range: u+ac25-ac2c,u+ac2e,u+ac30,u+ac32-ac37,u+ac39-ac3f,u+ac41-ac4c,u+ac4e-ac6f,u+ac72-ac73,u+ac75-ac76,u+ac79-ac7f,u+ac82,u+ac84-ac88,u+ac8a-ac8b,u+ac8d-ac8f,u+ac91-ac93,u+ac95-ac9b,u+ac9d-ac9e,u+aca1-aca7,u+acab,u+acad-acaf,u+acb1-acb7,u+acba-acbb,u+acbe-acc0,u+acc2-acc3,u+acc5-acdf
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.64.70656cd.woff2) format("woff2-variations");
    unicode-range: u+99df,u+99ed,u+99f1,u+99ff,u+9a01,u+9a08,u+9a0e-9a0f,u+9a19,u+9a2b,u+9a30,u+9a36-9a37,u+9a40,u+9a43,u+9a45,u+9a4d,u+9a55,u+9a57,u+9a5a-9a5b,u+9a5f,u+9a62,u+9a65,u+9a69-9a6a,u+9aa8,u+9ab8,u+9ad3,u+9ae5,u+9aee,u+9b1a,u+9b27,u+9b2a,u+9b31,u+9b3c,u+9b41-9b45,u+9b4f,u+9b54,u+9b5a,u+9b6f,u+9b8e,u+9b91,u+9b9f,u+9bab,u+9bae,u+9bc9,u+9bd6,u+9be4,u+9be8,u+9c0d,u+9c10,u+9c12,u+9c15,u+9c25,u+9c32,u+9c3b,u+9c47,u+9c49,u+9c57,u+9ce5,u+9ce7,u+9ce9,u+9cf3-9cf4,u+9cf6,u+9d09,u+9d1b,u+9d26,u+9d28,u+9d3b,u+9d51,u+9d5d,u+9d60-9d61,u+9d6c,u+9d72,u+9da9,u+9daf,u+9db4,u+9dc4,u+9dd7,u+9df2,u+9df8-9dfa,u+9e1a,u+9e1e,u+9e75,u+9e79,u+9e7d,u+9e7f,u+9e92-9e93,u+9e97,u+9e9d,u+9e9f,u+9ea5,u+9eb4-9eb5,u+9ebb,u+9ebe,u+9ec3,u+9ecd-9ece,u+9ed4,u+9ed8,u+9edb-9edc,u+9ede,u+9ee8,u+9ef4,u+9f07-9f08,u+9f0e,u+9f13,u+9f20,u+9f3b,u+9f4a-9f4b,u+9f4e,u+9f52,u+9f5f,u+9f61,u+9f67,u+9f6a,u+9f6c,u+9f77,u+9f8d,u+9f90,u+9f95,u+9f9c,u+ac02-ac03,u+ac05-ac06,u+ac09-ac0f,u+ac17-ac18,u+ac1b,u+ac1e-ac1f,u+ac21-ac23
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.65.963b0f8.woff2) format("woff2-variations");
    unicode-range: u+338c-339c,u+339f-33a0,u+33a2-33cb,u+33cf-33d0,u+33d3,u+33d6,u+33d8,u+33db-33dd,u+4e01,u+4e03,u+4e07-4e08,u+4e11,u+4e14-4e15,u+4e18-4e19,u+4e1e,u+4e32,u+4e38-4e39,u+4e42-4e43,u+4e45,u+4e4d-4e4f,u+4e56,u+4e58-4e59,u+4e5d-4e5e,u+4e6b,u+4e6d,u+4e73,u+4e76-4e77,u+4e7e,u+4e82,u+4e86,u+4e88,u+4e8e,u+4e90-4e92,u+4e94-4e95,u+4e98,u+4e9b,u+4e9e,u+4ea1-4ea2,u+4ea4-4ea6,u+4ea8,u+4eab,u+4ead-4eae,u+4eb6,u+4ec0-4ec1,u+4ec4,u+4ec7,u+4ecb,u+4ecd,u+4ed4-4ed5,u+4ed7-4ed9,u+4edd,u+4edf,u+4ee4,u+4ef0,u+4ef2,u+4ef6-4ef7,u+4efb,u+4f01,u+4f09,u+4f0b,u+4f0d-4f11,u+4f2f,u+4f34,u+4f36,u+4f38,u+4f3a,u+4f3c-4f3d
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.66.a1a271d.woff2) format("woff2-variations");
    unicode-range: u+3136,u+3138,u+313a-3140,u+3143-3144,u+3150,u+3152,u+3154-3156,u+3158-315b,u+315d-315f,u+3162,u+3164-318c,u+318e,u+3200-321b,u+3231,u+3239,u+3251-325a,u+3260-327b,u+327e-327f,u+328a-3290,u+3294,u+329e,u+32a5,u+3380-3384,u+3388-338b
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.67.3fd300b.woff2) format("woff2-variations");
    unicode-range: u+2f7d,u+2f7f-2f8b,u+2f8e-2f90,u+2f92-2f97,u+2f99-2fa0,u+2fa2-2fa3,u+2fa5-2fa9,u+2fac-2fb1,u+2fb3-2fbc,u+2fc1-2fca,u+2fcd-2fd4,u+3003,u+3012-3019,u+301c,u+301e-3020,u+3036,u+3041,u+3043,u+3045,u+3047,u+3049,u+304e,u+3050,u+3052,u+3056,u+305a,u+305c,u+305e,u+3062,u+3065,u+306c,u+3070-307d,u+3080,u+3085,u+3087,u+308e,u+3090-3091,u+30a1,u+30a5,u+30a9,u+30ae,u+30b1-30b2,u+30b4,u+30b6,u+30bc-30be,u+30c2,u+30c5,u+30cc,u+30d2,u+30d4,u+30d8-30dd,u+30e4,u+30e6,u+30e8,u+30ee,u+30f0-30f2,u+30f4-30f6,u+3133,u+3135
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.68.8bc2475.woff2) format("woff2-variations");
    unicode-range: u+2541-254b,u+25a4-25a9,u+25b1,u+25b5,u+25b9,u+25bf,u+25c1,u+25c3,u+25c9-25ca,u+25cc,u+25ce,u+25d0-25d1,u+25e6,u+25ef,u+260f,u+261d,u+261f,u+262f,u+2660,u+2664,u+2667-2669,u+266d,u+266f,u+2716,u+271a,u+273d,u+2756,u+2776-277f,u+278a-2793,u+2963,u+2965,u+2ac5-2ac6,u+2acb-2acc,u+2f00,u+2f04,u+2f06,u+2f08,u+2f0a-2f0b,u+2f11-2f12,u+2f14,u+2f17-2f18,u+2f1c-2f1d,u+2f1f-2f20,u+2f23-2f26,u+2f28-2f29,u+2f2b,u+2f2d,u+2f2f-2f32,u+2f38,u+2f3c-2f40,u+2f42-2f4c,u+2f4f-2f52,u+2f54-2f58,u+2f5a-2f66,u+2f69-2f70,u+2f72-2f76,u+2f78,u+2f7a-2f7c
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.69.0eccd42.woff2) format("woff2-variations");
    unicode-range: u+2479-2487,u+249c-24d1,u+24d3-24d7,u+24d9-24e9,u+24eb-24f4,u+2500-2501,u+2503,u+250c-2513,u+2515-2516,u+2518-2540
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.70.c27259f.woff2) format("woff2-variations");
    unicode-range: u+215b-215e,u+2162-2169,u+2170-2179,u+2195-2199,u+21b0-21b4,u+21bc,u+21c0,u+21c4-21c5,u+21cd,u+21cf-21d4,u+21e0-21e3,u+21e6-21e9,u+2200,u+2202-2203,u+2206-2209,u+220b-220c,u+220f,u+2211,u+2213,u+221a,u+221d-2220,u+2222,u+2225-2227,u+2229-222c,u+222e,u+2234-2237,u+223d,u+2243,u+2245,u+2248,u+2250-2253,u+225a,u+2260-2262,u+2264-2267,u+226a-226b,u+226e-2273,u+2276-2277,u+2279-227b,u+2280-2287,u+228a-228b,u+2295-2297,u+22a3-22a5,u+22bb-22bc,u+22ce-22cf,u+22da-22db,u+22ee-22ef,u+2306,u+2312,u+2314,u+2467-2478
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.71.56025df.woff2) format("woff2-variations");
    unicode-range: u+81-82,u+84,u+a2-a5,u+a7-a8,u+aa,u+ac-ad,u+b1-b3,u+b6,u+b8-ba,u+bc-be,u+c0,u+c2,u+c6-cb,u+ce-d0,u+d4,u+d8-d9,u+db-dc,u+de-df,u+e6,u+eb,u+ee-f0,u+f4,u+f7-f9,u+fb,u+fe-ff,u+111,u+126-127,u+132-133,u+138,u+13f-142,u+149-14b,u+152-153,u+166-167,u+2bc,u+2c7,u+2d0,u+2d8-2d9,u+2db-2dd,u+391-394,u+396-3a1,u+3a3-3a9,u+3b2-3b6,u+3b8,u+3bc,u+3be-3c1,u+3c3-3c9,u+2010,u+2015-2016,u+2018-2019,u+201b,u+201f-2021,u+2025,u+2030,u+2033-2036,u+203c,u+203e,u+2042,u+2074,u+207a-207f,u+2081-2084,u+2109,u+2113,u+2116,u+2121,u+2126,u+212b,u+2153-2154
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.72.b361199.woff2) format("woff2-variations");
    unicode-range: u+e8,u+2da,u+2160,u+2194,u+3054,u+3058,u+306d,u+3086,u+308d,u+30ac,u+30bb,u+30c4,u+30cd-30ce,u+30e2,u+3132,u+3146,u+3149,u+339d,u+4e3b,u+4f0a,u+4fdd,u+4fe1,u+5409,u+540c,u+5834,u+592a-592b,u+5b9a,u+5dde,u+5e0c,u+5e73,u+5f0f,u+60f3,u+653f,u+661f,u+662f,u+667a,u+683c,u+6b4c,u+6c11,u+767c,u+76ee,u+76f4,u+77f3,u+79d1,u+7a7a,u+7b2c,u+7d22,u+8207,u+8a00,u+8a71,u+9280,u+9580,u+958b,u+96c6,u+9762,u+98df,u+9ed1,u+ac2d,u+adc8,u+add3,u+af48,u+b014,u+b134-b135,u+b158,u+b2aa,u+b35f,u+b6a4,u+b9cf,u+bb63,u+bd23,u+be91,u+c29b,u+c3f4,u+c42c,u+c55c,u+c573,u+c58f,u+c78c,u+c7dd,u+c8f5,u+cad1,u+cc48,u+cf10,u+cf20,u+d03c,u+d07d,u+d2a0,u+d30e,u+d38d,u+d3a8,u+d3c8,u+d5e5,u+d5f9,u+d6e4,u+f90a,u+ff02,u+ff1c
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.73.7e0a09d.woff2) format("woff2-variations");
    unicode-range: u+3b1,u+2466,u+25a1,u+25a3,u+261c,u+3008-3009,u+305b,u+305d,u+3069,u+30a7,u+30ba,u+30cf,u+30ef,u+3151,u+3157,u+4e4b,u+4e5f,u+4e8c,u+4eca,u+4ed6,u+4f5b,u+50cf,u+5149,u+5165,u+5171,u+5229,u+529b,u+5316,u+539f,u+53f2,u+571f,u+5728,u+58eb,u+591c,u+5b78,u+5c11,u+5c55,u+5ddd,u+5e02,u+5fb7,u+60c5,u+610f,u+611f,u+6625,u+66f8,u+6797,u+679c,u+682a,u+6d2a,u+706b,u+7406,u+767b,u+76f8,u+77e5,u+7acb,u+898b,u+8a69,u+8def,u+8fd1,u+901a,u+90e8,u+91cd,u+975e,u+ae14,u+ae6c,u+aec0,u+afc7,u+afc9,u+b01c,u+b028,u+b308,u+b311,u+b314,u+b31c,u+b524,u+b560,u+b764,u+b920,u+b9e3,u+bd48,u+be7d,u+c0db,u+c231,u+c270,u+c2e3,u+c37d,u+c3ed,u+c530,u+c6a5,u+c6dc,u+c7a4,u+c954,u+c974,u+d000,u+d565,u+d667,u+d6c5,u+d79d,u+ff1e
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.74.46f624a.woff2) format("woff2-variations");
    unicode-range: u+131,u+2032,u+2465,u+2642,u+3048,u+3051,u+3083-3084,u+308f,u+30c0,u+30d1,u+30d3,u+30d6,u+30df,u+30e7,u+3153,u+4e16,u+4e8b,u+4ee5,u+5206,u+52a0,u+52d5,u+53e4,u+53ef,u+54c1,u+57ce,u+597d,u+5b8c,u+5ea6,u+5f8c,u+5f97,u+6210,u+6240,u+624b,u+6728,u+6bd4,u+7236,u+7269,u+7279,u+738b,u+7528,u+7530,u+767e,u+798f,u+8005,u+8a18,u+90fd,u+91cc,u+9577,u+9593,u+98a8,u+ac20,u+acf6,u+ad90,u+af5d,u+af80,u+afcd,u+aff0,u+b0a1,u+b0b5,u+b1fd,u+b2fc,u+b380,u+b51b,u+b584,u+b5b3,u+b8fd,u+b93c,u+b9f4,u+bb44,u+bc08,u+bc27,u+bc49,u+be55,u+be64,u+bfb0,u+bfc5,u+c178,u+c21f,u+c314,u+c4f1,u+c58d,u+c664,u+c698,u+c6a7,u+c6c1,u+c9ed,u+cac0,u+cacc,u+cad9,u+ccb5,u+cdcc,u+d0e4,u+d143,u+d320,u+d330,u+d54d,u+ff06,u+ff1f,u+ff5e
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.75.20e01ed.woff2) format("woff2-variations");
    unicode-range: u+b4,u+20a9,u+20ac,u+2190,u+24d8,u+2502,u+2514,u+2592,u+25c7-25c8,u+2663,u+3060,u+3064,u+3081,u+3088,u+30a3,u+30a6,u+30aa,u+30b5,u+30c7,u+30ca-30cb,u+30d0,u+30e3,u+30e5,u+339e,u+4e09,u+4eac,u+4f5c,u+5167-5168,u+516c,u+51fa,u+5408,u+540d,u+591a,u+5b57,u+6211,u+65b9,u+660e,u+6642,u+6700,u+6b63,u+6e2f,u+7063,u+7532,u+793e,u+81ea,u+8272,u+82b1,u+897f,u+8eca,u+91ce,u+ac38,u+ad76,u+ae84,u+aecc,u+b07d,u+b0b1,u+b215,u+b2a0,u+b310,u+b3d7,u+b52a,u+b618,u+b775,u+b797,u+bcd5,u+bd59,u+be80,u+bea8,u+bed1,u+bee4-bee5,u+c060,u+c2ef,u+c329,u+c3dc,u+c597,u+c5bd,u+c5e5,u+c69c,u+c9d6,u+ca29,u+ca5c,u+ca84,u+cc39,u+cc3b,u+ce89,u+cee5,u+cf65,u+cf85,u+d058,u+d145,u+d22d,u+d325,u+d37d,u+d3ad,u+d769,u+ff0c
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.76.ba6a968.woff2) format("woff2-variations");
    unicode-range: u+2161,u+2228,u+2299,u+2464,u+2517,u+2640,u+3042,u+304a,u+3053,u+3061,u+307f,u+3082,u+308c,u+3092,u+30a8,u+30ab,u+30ad,u+30b0,u+30b3,u+30b7,u+30c1,u+30c6,u+30c9,u+30d5,u+30d7,u+30de,u+30e0-30e1,u+30ec-30ed,u+4e0b,u+4e0d,u+4ee3,u+53f0,u+548c,u+5b89,u+5bb6,u+5c0f,u+611b,u+6771,u+6aa2,u+6bcd,u+6c34,u+6cd5,u+6d77,u+767d,u+795e,u+8ecd,u+9999,u+9ad8,u+ac07,u+ac1a,u+ac40,u+ad0c,u+ad88,u+ada4,u+ae01,u+ae65,u+aebd,u+aec4,u+afe8,u+b139,u+b205,u+b383,u+b38c,u+b42c,u+b461,u+b55c,u+b78f,u+b8fb,u+b9f7,u+bafc,u+bc99,u+bed8,u+bfcd,u+c0bf,u+c0f9,u+c167,u+c204,u+c20f,u+c22f,u+c258,u+c298,u+c2bc,u+c388,u+c501,u+c50c,u+c5b9,u+c5ce,u+c641,u+c648,u+c73d,u+ca50,u+ca61,u+cc4c,u+ceac,u+d0d4,u+d5f7,u+d6d7,u+ff1a
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.77.dbef879.woff2) format("woff2-variations");
    unicode-range: u+2103,u+2463,u+25c6,u+25cb,u+266c,u+3001,u+300a,u+3046,u+304c-304d,u+304f,u+3055,u+3059,u+3063,u+3066-3068,u+306f,u+3089,u+30b8,u+30bf,u+314f,u+4e0a,u+570b,u+5730,u+5916,u+5929,u+5c71,u+5e74,u+5fc3,u+601d,u+6027,u+63d0,u+6709,u+6734,u+751f,u+7684,u+82f1,u+9053,u+91d1,u+97f3,u+ac2f,u+ac4d,u+adc4,u+ade4,u+ae41,u+ae4d-ae4e,u+aed1,u+afb9,u+b0e0,u+b299,u+b365,u+b46c,u+b480,u+b4c8,u+b7b4,u+b819,u+b918,u+baab,u+bab9,u+be8f,u+bed7,u+c0ec,u+c19f,u+c1a5,u+c3d9,u+c464,u+c53d,u+c553,u+c570,u+c5cc,u+c633,u+c6a4,u+c7a3,u+c7a6,u+c886,u+c9d9-c9da,u+c9ec,u+ca0c,u+cc21,u+cd1b,u+cd78,u+cdc4,u+cef8,u+cfe4,u+d0a5,u+d0b5,u+d0ec,u+d15d,u+d188,u+d23c,u+d2ac,u+d729,u+d79b,u+ff01,u+ff08-ff09,u+ff5c
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.78.036965f.woff2) format("woff2-variations");
    unicode-range: u+2039-203a,u+223c,u+25b3,u+25b7,u+25bd,u+25cf,u+266a,u+3002,u+300b,u+304b,u+3057,u+305f,u+306a-306b,u+307e,u+308a-308b,u+3093,u+30a2,u+30af,u+30b9,u+30c3,u+30c8,u+30e9-30eb,u+33a1,u+4e00,u+524d,u+5357,u+5b50,u+7121,u+884c,u+9751,u+ac94,u+aebe,u+aecd,u+af08,u+af41,u+af49,u+b010,u+b053,u+b109,u+b11b,u+b128,u+b154,u+b291,u+b2e6,u+b301,u+b385,u+b525,u+b5b4,u+b729,u+b72f,u+b738,u+b7ff,u+b837,u+b975,u+ba67,u+bb47,u+bc1f,u+bd90,u+bfd4,u+c27c,u+c324,u+c379,u+c3e0,u+c465,u+c53b,u+c58c,u+c610,u+c653,u+c6cd,u+c813,u+c82f,u+c999,u+c9e0,u+cac4,u+cad3,u+cbd4,u+cc10,u+cc22,u+ccb8,u+ccbc,u+cda5,u+ce84,u+cea3,u+cf67,u+cfe1,u+d241,u+d30d,u+d31c,u+d391,u+d401,u+d479,u+d5c9,u+d5db,u+d649,u+d6d4
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.79.e592843.woff2) format("woff2-variations");
    unicode-range: u+b0,u+e9,u+2193,u+2462,u+260e,u+261e,u+300e-300f,u+3044,u+30a4,u+30fb-30fc,u+314d,u+5973,u+6545,u+6708,u+7537,u+ac89,u+ac9c,u+acc1,u+ad04,u+ad75,u+ad7d,u+ae45,u+ae61,u+af42,u+b0ab,u+b0af,u+b0b3,u+b12c,u+b194,u+b1a8,u+b220,u+b258,u+b284,u+b2ff,u+b315,u+b371,u+b3d4-b3d5,u+b460,u+b527,u+b534,u+b810,u+b818,u+b98e,u+ba55,u+bbac,u+bc0b,u+bc40,u+bca1,u+bccd,u+bd93,u+be54,u+be5a,u+bf08,u+bf50,u+bf55,u+bfdc,u+c0c0,u+c0d0,u+c0f4,u+c100,u+c11e,u+c170,u+c20d,u+c274,u+c290,u+c308,u+c369,u+c539,u+c587,u+c5ff,u+c6ec,u+c70c,u+c7ad,u+c7c8,u+c83c,u+c881,u+cb48,u+cc60,u+ce69,u+ce6b,u+ce75,u+cf04,u+cf08,u+cf55,u+cf70,u+cffc,u+d0b7,u+d1a8,u+d2c8,u+d384,u+d47c,u+d48b,u+d5dd,u+d5e8,u+d720,u+d759,u+f981
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.80.99f1dca.woff2) format("woff2-variations");
    unicode-range: u+e0,u+e2,u+395,u+3b7,u+3ba,u+2460-2461,u+25a0,u+3010-3011,u+306e,u+30f3,u+314a,u+314c,u+5927,u+65b0,u+7e41,u+97d3,u+9ad4,u+ad49,u+ae0b,u+ae0d,u+ae43,u+ae5d,u+aecf,u+af3c,u+af64,u+afd4,u+b080,u+b084,u+b0c5,u+b10c,u+b1e8,u+b2ac,u+b36e,u+b451,u+b515,u+b540,u+b561,u+b6ab,u+b6b1,u+b72c,u+b730,u+b744,u+b800,u+b8ec,u+b8f0,u+b904,u+b968,u+b96d,u+b987,u+b9d9,u+bb36,u+bb49,u+bc2d,u+bc43,u+bcf6,u+bd89,u+be57,u+be61,u+bed4,u+c090,u+c130,u+c148,u+c19c,u+c2f9,u+c36c,u+c37c,u+c384,u+c3df,u+c575,u+c584,u+c660,u+c719,u+c816,u+ca4d,u+ca54,u+cabc,u+cb49,u+cc14,u+cff5,u+d004,u+d038,u+d0b4,u+d0d3,u+d0e0,u+d0ed,u+d131,u+d1b0,u+d31f,u+d33d,u+d3a0,u+d3ab,u+d514,u+d584,u+d6a1,u+d6cc,u+d749,u+d760,u+d799
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.81.5384372.woff2) format("woff2-variations");
    unicode-range: u+24,u+60,u+3b9,u+3bb,u+3bd,u+2191,u+2606,u+300c-300d,u+3131,u+3134,u+3139,u+3141-3142,u+3148,u+3161,u+3163,u+321c,u+4eba,u+5317,u+ac31,u+ac77,u+ac9f,u+acb9,u+acf0-acf1,u+acfd,u+ad73,u+af3d,u+b00c,u+b04a,u+b057,u+b0c4,u+b188,u+b1cc,u+b214,u+b2db,u+b2ee,u+b304,u+b4ed,u+b518,u+b5bc,u+b625,u+b69c-b69d,u+b7ac,u+b801,u+b86c,u+b959,u+b95c,u+b985,u+ba48,u+bb58,u+bc0c,u+bc38,u+bc85,u+bc9a,u+bf40,u+c068,u+c0bd,u+c0cc,u+c12f,u+c149,u+c1e0,u+c22b,u+c22d,u+c250,u+c2fc,u+c300,u+c313,u+c370,u+c3d8,u+c557,u+c580,u+c5e3,u+c62e,u+c634,u+c6f0,u+c74d,u+c783,u+c78e,u+c796,u+c7bc,u+c92c,u+ca4c,u+cc1c,u+cc54,u+cc59,u+ce04,u+cf30,u+cfc4,u+d140,u+d321,u+d38c,u+d399,u+d54f,u+d587,u+d5d0,u+d6e8,u+d770
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.82.28d48cc.woff2) format("woff2-variations");
    unicode-range: u+d7,u+ea,u+fc,u+2192,u+25bc,u+3000,u+3137,u+3145,u+315c,u+7f8e,u+ac13,u+ac71,u+ac90,u+acb8,u+ace7,u+ad7f,u+ae50,u+aef4,u+af34,u+afbc,u+b048,u+b09a,u+b0ad,u+b0bc,u+b113,u+b125,u+b141,u+b20c,u+b2d9,u+b2ed,u+b367,u+b369,u+b374,u+b3cb,u+b4ec,u+b611,u+b760,u+b81b,u+b834,u+b8b0,u+b8e1,u+b989,u+b9d1,u+b9e1,u+b9fa,u+ba4d,u+ba78,u+bb35,u+bb54,u+bbf9,u+bc11,u+bcb3,u+bd05,u+bd95,u+bdd4,u+be10,u+bed0,u+bf51,u+c0d8,u+c232,u+c2b7,u+c2eb,u+c378,u+c500,u+c52c,u+c549,u+c568,u+c598,u+c5c9,u+c61b,u+c639,u+c67c,u+c717,u+c78a,u+c80a,u+c90c-c90d,u+c950,u+c9e7,u+cbe4,u+cca9,u+cce4,u+cdb0,u+ce78,u+ce94,u+ce98,u+cf8c,u+d018,u+d034,u+d0f1,u+d1b1,u+d280,u+d2f8,u+d338,u+d380,u+d3b4,u+d610,u+d69f,u+d6fc,u+d758
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.83.7acde81.woff2) format("woff2-variations");
    unicode-range: u+e7,u+2022,u+203b,u+25c0,u+2605,u+2661,u+3147,u+318d,u+672c,u+8a9e,u+acaa,u+acbc,u+ad1c,u+ae4a,u+ae5c,u+b044,u+b054,u+b0c8-b0c9,u+b2a6,u+b2d0,u+b35c,u+b364,u+b428,u+b454,u+b465,u+b4b7,u+b4e3,u+b51c,u+b5a1,u+b784,u+b790,u+b7ab,u+b7f4,u+b82c,u+b835,u+b8e9,u+b8f8,u+b9d8,u+b9f9,u+ba5c,u+ba64,u+babd,u+bb18,u+bb3b,u+bbff,u+bc0d,u+bc45,u+bc97,u+bcbc,u+be45,u+be75,u+be7c,u+bfcc,u+c0b6,u+c0f7,u+c14b,u+c2b4,u+c30d,u+c4f8,u+c5bb,u+c5d1,u+c5e0,u+c5ee,u+c5fd,u+c606,u+c6c5,u+c6e0,u+c708,u+c81d,u+c820,u+c824,u+c878,u+c918,u+c96c,u+c9e4,u+c9f1,u+cc2e,u+cd09,u+cea1,u+cef5,u+cef7,u+cf64,u+cf69,u+cfe8,u+d035,u+d0ac,u+d230,u+d234,u+d2f4,u+d31d,u+d575,u+d578,u+d608,u+d614,u+d718,u+d751,u+d761,u+d78c,u+d790
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.84.36fc5d5.woff2) format("woff2-variations");
    unicode-range: u+2665,u+3160,u+4e2d,u+6587,u+65e5,u+ac12,u+ac14,u+ac16,u+ac81,u+ad34,u+ade0,u+ae54,u+aebc,u+af2c,u+afc0,u+afc8,u+b04c,u+b08c,u+b099,u+b0a9,u+b0ac,u+b0ae,u+b0b8,u+b123,u+b179,u+b2e5,u+b2f7,u+b4c0,u+b531,u+b538,u+b545,u+b550,u+b5a8,u+b6f0,u+b728,u+b73b,u+b7ad,u+b7ed,u+b809,u+b864,u+b86d,u+b871,u+b9bf,u+b9f5,u+ba40,u+ba4b,u+ba58,u+ba87,u+baac,u+bbc0,u+bc16,u+bc34,u+bd07,u+bd99,u+be59,u+bfd0,u+c058,u+c0e4,u+c0f5,u+c12d,u+c139,u+c228,u+c529,u+c5c7,u+c635,u+c637,u+c735,u+c77d,u+c787,u+c789,u+c8c4,u+c989,u+c98c,u+c9d0,u+c9d3,u+cc0c,u+cc99,u+cd0c,u+cd2c,u+cd98,u+cda4,u+ce59,u+ce60,u+ce6d,u+cea0,u+d0d0-d0d1,u+d0d5,u+d14d,u+d1a4,u+d29c,u+d2f1,u+d301,u+d39c,u+d3bc,u+d4e8,u+d540,u+d5ec,u+d640,u+d750
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.85.c915e97.woff2) format("woff2-variations");
    unicode-range: u+5e,u+25b2,u+25b6,u+314e,u+ac24,u+ace1,u+ace4,u+ae68,u+af2d,u+b0d0,u+b0e5,u+b150,u+b155,u+b193,u+b2c9,u+b2dd,u+b3c8,u+b3fc,u+b410,u+b458,u+b4dd,u+b5a0,u+b5a4,u+b5bb,u+b7b5,u+b838,u+b840,u+b86f,u+b8f9,u+b960,u+b9e5,u+bab8,u+bb50,u+bc1d,u+bc24-bc25,u+bca8,u+bcbd,u+bd04,u+bd10,u+bd24,u+be48,u+be5b,u+be68,u+c05c,u+c12c,u+c140,u+c15c,u+c168,u+c194,u+c219,u+c27d,u+c2a8,u+c2f1,u+c2f8,u+c368,u+c554-c555,u+c559,u+c564,u+c5d8,u+c5fc,u+c625,u+c65c,u+c6b1,u+c728,u+c794,u+c84c,u+c88c,u+c8e0,u+c8fd,u+c998,u+c9dd,u+cc0d,u+cc30,u+ceec,u+cf13,u+cf1c,u+cf5c,u+d050,u+d07c,u+d0a8,u+d134,u+d138,u+d154,u+d1f4,u+d2bc,u+d329,u+d32c,u+d3d0,u+d3f4,u+d3fc,u+d56b,u+d5cc,u+d600-d601,u+d639,u+d6c8,u+d754,u+d765
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.86.2aaa7be.woff2) format("woff2-variations");
    unicode-range: u+3c-3d,u+2026,u+24d2,u+314b,u+ac11,u+acf3,u+ad74,u+ad81,u+adf9,u+ae34,u+af43,u+afb8,u+b05d,u+b07c,u+b110,u+b118,u+b17c,u+b180,u+b18d,u+b192,u+b2cc,u+b355,u+b378,u+b4a4,u+b4ef,u+b78d,u+b799,u+b7a9,u+b7fd,u+b807,u+b80c,u+b839,u+b9b4,u+b9db,u+ba3c,u+bab0,u+bba4,u+bc94,u+be4c,u+c154,u+c1c4,u+c26c,u+c2ac,u+c2ed,u+c4f4,u+c55e,u+c561,u+c571,u+c5b5,u+c5c4,u+c654-c655,u+c695,u+c6e8,u+c6f9,u+c724,u+c751,u+c775,u+c7a0,u+c7c1,u+c874,u+c880,u+c9d5,u+c9f8,u+cabd,u+cc29,u+cc2c,u+cca8,u+ccab,u+ccd0,u+ce21,u+ce35,u+ce7c,u+ce90,u+cee8,u+cef4,u+cfe0,u+d070,u+d0b9,u+d0c1,u+d0c4,u+d0c8,u+d15c,u+d1a1,u+d2c0,u+d300,u+d314,u+d3ed,u+d478,u+d480,u+d48d,u+d508,u+d53d,u+d5e4,u+d611,u+d61c,u+d68d,u+d6a8,u+d798
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.87.1b86464.woff2) format("woff2-variations");
    unicode-range: u+23,u+25,u+5f,u+a9,u+ac08,u+ac78,u+aca8,u+acac,u+ace8,u+ad70,u+adc0,u+addc,u+b137,u+b140,u+b208,u+b290,u+b2f5,u+b3c5,u+b3cc,u+b420,u+b429,u+b529,u+b530,u+b77d,u+b79c,u+b7a8,u+b7c9,u+b7f0,u+b7fc,u+b828,u+b860,u+b9ad,u+b9c1,u+b9c9,u+b9dd-b9de,u+b9e8,u+ba38-ba39,u+babb,u+bc00,u+bc8c,u+bca0,u+bca4,u+bcd1,u+bcfc,u+bd09,u+bdf0,u+be60,u+c0ad,u+c0b4,u+c0bc,u+c190,u+c1fc,u+c220,u+c288,u+c2b9,u+c2f6,u+c528,u+c545,u+c558,u+c5bc,u+c5d4,u+c600,u+c644,u+c6c0,u+c6c3,u+c721,u+c798,u+c7a1,u+c811,u+c838,u+c871,u+c904,u+c990,u+c9dc,u+cc38,u+cc44,u+cca0,u+cd1d,u+cd95,u+cda9,u+ce5c,u+cf00,u+cf58,u+d150,u+d22c,u+d305,u+d328,u+d37c,u+d3f0,u+d551,u+d5a5,u+d5c8,u+d5d8,u+d63c,u+d64d,u+d669,u+d734,u+d76c
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.88.e842570.woff2) format("woff2-variations");
    unicode-range: u+26,u+2b,u+3e,u+40,u+7e,u+ac01,u+ac19,u+ac1d,u+aca0,u+aca9,u+acb0,u+ad8c,u+ae09,u+ae38,u+ae40,u+aed8,u+b09c,u+b0a0,u+b108,u+b204,u+b298,u+b2d8,u+b2eb-b2ec,u+b2f4,u+b313,u+b358,u+b450,u+b4e0,u+b54c,u+b610,u+b780,u+b78c,u+b791,u+b8e8,u+b958,u+b974,u+b984,u+b9b0,u+b9bc-b9bd,u+b9ce,u+ba70,u+bbfc,u+bc0f,u+bc15,u+bc1b,u+bc31,u+bc95,u+bcc0,u+bcc4,u+bd81,u+bd88,u+c0c8,u+c11d,u+c13c,u+c158,u+c18d,u+c1a1,u+c21c,u+c4f0,u+c54a,u+c560,u+c5b8,u+c5c8,u+c5f4,u+c628,u+c62c,u+c678,u+c6cc,u+c808,u+c810,u+c885,u+c88b,u+c900,u+c988,u+c99d,u+c9c8,u+cc3d-cc3e,u+cc45,u+cd08,u+ce20,u+cee4,u+d074,u+d0a4,u+d0dd,u+d2b9,u+d3b8,u+d3c9,u+d488,u+d544,u+d559,u+d56d,u+d588,u+d615,u+d648,u+d655,u+d658,u+d65c
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.89.f52e913.woff2) format("woff2-variations");
    unicode-range: u+d,u+48,u+7c,u+ac10,u+ac15,u+ac74,u+ac80,u+ac83,u+acc4,u+ad11,u+ad50,u+ad6d,u+adfc,u+ae00,u+ae08,u+ae4c,u+b0a8,u+b124,u+b144,u+b178,u+b274,u+b2a5,u+b2e8,u+b2f9,u+b354,u+b370,u+b418,u+b41c,u+b4f1,u+b514,u+b798,u+b808,u+b824-b825,u+b8cc,u+b978,u+b9d0,u+b9e4,u+baa9,u+bb3c,u+bc18,u+bc1c,u+bc30,u+bc84,u+bcf5,u+bcf8,u+bd84,u+be0c,u+be14,u+c0b0,u+c0c9,u+c0dd,u+c124,u+c2dd,u+c2e4,u+c2ec,u+c54c,u+c57c-c57d,u+c591,u+c5c5-c5c6,u+c5ed,u+c608,u+c640,u+c6b8,u+c6d4,u+c784,u+c7ac,u+c800-c801,u+c9c1,u+c9d1,u+cc28,u+cc98,u+cc9c,u+ccad,u+cd5c,u+cd94,u+cd9c,u+cde8,u+ce68,u+cf54,u+d0dc,u+d14c,u+d1a0,u+d1b5,u+d2f0,u+d30c,u+d310,u+d398,u+d45c,u+d50c,u+d53c,u+d560,u+d568,u+d589,u+d604,u+d6c4,u+d788
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.90.6ef11d7.woff2) format("woff2-variations");
    unicode-range: u+39,u+49,u+4d-4e,u+ac04,u+ac1c,u+ac70,u+ac8c,u+acbd,u+acf5,u+acfc,u+ad00,u+ad6c,u+adf8,u+b098,u+b0b4,u+b294,u+b2c8,u+b300,u+b3c4,u+b3d9,u+b4dc,u+b4e4,u+b77c,u+b7ec,u+b85d,u+b97c,u+b9c8,u+b9cc,u+ba54,u+ba74,u+ba85,u+baa8,u+bb34,u+bb38,u+bbf8,u+bc14,u+bc29,u+bc88,u+bcf4,u+bd80,u+be44,u+c0c1,u+c11c,u+c120,u+c131,u+c138,u+c18c,u+c218,u+c2b5,u+c2e0,u+c544,u+c548,u+c5b4,u+c5d0,u+c5ec,u+c5f0,u+c601,u+c624,u+c694,u+c6a9,u+c6b0,u+c6b4,u+c6d0,u+c704,u+c720,u+c73c,u+c740,u+c744,u+c74c,u+c758,u+c77c,u+c785,u+c788,u+c790-c791,u+c7a5,u+c804,u+c815,u+c81c,u+c870,u+c8fc,u+c911,u+c9c4,u+ccb4,u+ce58,u+ce74,u+d06c,u+d0c0,u+d130,u+d2b8,u+d3ec,u+d504,u+d55c,u+d569,u+d574,u+d638,u+d654,u+d68c
}

@font-face {
    font-family: Pretendard Variable;
    font-style: normal;
    font-display: swap;
    font-weight: 45 920;
    src: local("Pretendard Variable"),url(/_nuxt/fonts/PretendardVariable.subset.91.dcfa7ce.woff2) format("woff2-variations");
    unicode-range: u+20-22,u+27-2a,u+2c-38,u+3a-3b,u+3f,u+41-47,u+4a-4c,u+4f-5d,u+61-7b,u+7d,u+a0-a1,u+ab,u+ae,u+b7,u+bb,u+bf,u+2013-2014,u+201c-201d,u+2122,u+ac00,u+ace0,u+ae30,u+b2e4,u+b85c,u+b9ac,u+c0ac,u+c2a4,u+c2dc,u+c774,u+c778,u+c9c0,u+d558
}

@font-face {
    font-family: NotoSansCJKkr;
    font-style: normal;
    font-weight: 300;
    src: url(/font/NotoSansKR/NotoSansKR-Regular.eot);
    src: url(/font/NotoSansKR/NotoSansKR-Regular.eot?#iefix) format("embedded-opentype"),url(/font/NotoSansKR/NotoSansKR-Regular.woff) format("woff"),url(/font/NotoSansKR/NotoSansKR-Regular.woff2) format("woff2");
    font-display: swap
}

@font-face {
    font-family: NotoSansCJKkr-Light;
    font-style: normal;
    src: url(/font/NotoSansKR/NotoSansKR-Light.eot);
    src: url(/font/NotoSansKR/NotoSansKR-Light.eot?#iefix) format("embedded-opentype"),url(/font/NotoSansKR/NotoSansKR-Light.woff) format("woff"),url(/font/NotoSansKR/NotoSansKR-Light.woff2) format("woff2");
    font-display: swap
}

@font-face {
    font-family: NotoSansCJKkrBold;
    font-weight: 700;
    src: url(/font/NotoSansKR/NotoSansKR-Bold.eot);
    src: url(/font/NotoSansKR/NotoSansKR-Bold.eot?#iefix) format("embedded-opentype"),url(/font/NotoSansKR/NotoSansKR-Bold.woff) format("woff"),url(/font/NotoSansKR/NotoSansKR-Bold.woff2) format("woff2");
    font-display: swap
}

@font-face {
    font-family: HelveticaNeue;
    font-style: normal;
    font-weight: 300;
    src: url(/font/HelveticaNeue/HelveticaNeue-Thin.eot);
    src: url(/font/HelveticaNeue/HelveticaNeue-Thin.eot?#iefix) format("embedded-opentype"),url(/font/HelveticaNeue/HelveticaNeue-Thin.woff) format("woff");
    font-display: swap
}

@font-face {
    font-family: HelveticaNeueBold;
    font-weight: 700;
    src: url(/font/HelveticaNeue/HelveticaNeue-Bold.eot);
    src: url(/font/HelveticaNeue/HelveticaNeue-Bold.eot?#iefix) format("embedded-opentype"),url(/font/HelveticaNeue/HelveticaNeue-Bold.woff) format("woff");
    font-display: swap
}

@font-face {
    font-family: Roboto;
    font-weight: 400;
    src: url(/font/Roboto/Roboto-Regular.eot);
    src: url(/font/Roboto/Roboto-Regular.eot?#iefix) format("embedded-opentype"),url(/font/Roboto/Roboto-Regular.woff) format("woff"),url(/font/Roboto/Roboto-Regular.woff2) format("woff2");
    font-display: swap
}

@font-face {
    font-family: Roboto-Light;
    font-weight: 300;
    src: url(/font/Roboto/Roboto-Light.eot);
    src: url(/font/Roboto/Roboto-Light.eot?#iefix) format("embedded-opentype"),url(/font/Roboto/Roboto-Light.woff) format("woff"),url(/font/Roboto/Roboto-Light.woff2) format("woff2");
    font-display: swap
}

@font-face {
    font-family: Roboto-Medium;
    font-weight: 500;
    src: url(/font/Roboto/Roboto-Medium.eot);
    src: url(/font/Roboto/Roboto-Medium.eot?#iefix) format("embedded-opentype"),url(/font/Roboto/Roboto-Medium.woff) format("woff"),url(/font/Roboto/Roboto-Medium.woff2) format("woff2");
    font-display: swap
}

@font-face {
    font-family: Roboto-Bold;
    font-weight: 700;
    src: url(/font/Roboto/Roboto-Bold.eot);
    src: url(/font/Roboto/Roboto-Bold.eot?#iefix) format("embedded-opentype"),url(/font/Roboto/Roboto-Bold.woff) format("woff"),url(/font/Roboto/Roboto-Bold.woff2) format("woff2");
    font-display: swap
}

.wrap,.wrap button,.wrap input,.wrap select,.wrap table,.wrap textarea {
    font-weight: 300;
    font-size: 12px
}

.wrap {
    position: relative;
    padding-top: 90px;
    overflow-anchor: none;
    height: 100vh
}

.wrap_loading {
    display: table;
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0
}

.wrap_loading_center {
    display: table-cell;
    vertical-align: middle;
    text-align: center
}

.kream-loading {
    margin: 0 auto;
    background: url(/_nuxt/img/loading_kream.fa90c37.gif) no-repeat;
    background-size: 100px 100px;
    width: 100px;
    height: 100px;
    display: block
}

@media(max-width: 768px) {
    .wrap {
        padding-top:52px
    }
}

 * {
    box-sizing: border-box;
    -webkit-box-sizing: border-box
}

 img {
    border: 0;
    vertical-align: top
}

 li, ol, ul {
    list-style: none
}

 address, em {
    font-style: normal
}

 a {
    color: inherit;
    -webkit-tap-highlight-color: rgba(0,0,0,.1);
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    outline: none
}

 a, a:active, a:focus, a:hover {
    text-decoration: none
}

 button {
    border: none;
    background: none;
    cursor: pointer;
    -webkit-tap-highlight-color: rgba(0,0,0,.1);
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    outline: none
}

 table {
    border-collapse: collapse;
    border-spacing: 0;
    table-layout: fixed;
    width: 100%;
    border-top: 1px solid #ebebeb;
    word-break: break-word;
    word-wrap: break-word;
    text-align: center
}

 table th {
    color: #222;
    font-weight: 400
}

 table th .etc {
    color: rgba(34,34,34,.5)
}

 table thead th {
    height: 35px;
    padding: 5px;
    color: rgba(34,34,34,.5);
    background-color: hsla(0,0%,92.2%,.2);
    font-size: 11px;
    line-height: 14px;
    letter-spacing: .12px
}

 table tbody td, table tbody th {
    height: 40px;
    padding: 4px 5px;
    border-top: 1px solid #f2f2f2;
    font-size: 12px;
    line-height: 15px;
    letter-spacing: .13px
}

 table tbody th {
    padding: 4px 0;
    text-align: left
}

 table td [class*=text] {
    display: block;
    margin-top: -1px;
    font-size: 11px;
    line-height: 14px;
    letter-spacing: .12px
}

 table td .text_info_normal {
    color: rgba(34,34,34,.5)
}

 table td .text_info_warning {
    color: #f15746
}

.blind {
    overflow: hidden;
    position: absolute!important;
    width: 1px;
    height: 1px;
    border: 0;
    padding: 0;
    clip: rect(0,0,0,0)
}

.wrap {
    min-width: 320px;
    min-height: 100%;
    max-width: 640px;
    color: #222;
    font-size: 14px;
    line-height: 1.2;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    padding: 0
}

 .content .description_wrap {
    padding: 20px 0 19px
}

.lg .content .description_wrap {
    padding-top: 28px
}

 .content .description {
    line-height: 17px;
    letter-spacing: .11px
}

 .content .description+.description {
    margin-top: 17px
}

 .content .description_list {
    margin-bottom: 14px
}

 .content .description_list .list_item {
    position: relative;
    margin-top: 14px;
    padding-left: 10px;
    color: rgba(34,34,34,.6);
    line-height: 17px;
    letter-spacing: .15px
}

 .content .description_list .list_item+.list_item {
    margin-top: 6px
}

 .content .description_list .list_item:before {
    position: absolute;
    left: 0;
    top: 5px;
    width: 3px;
    height: 3px;
    background-color: #333;
    content: ""
}

 .content .description_list .list_item>ul {
    margin: 5px 0 9px;
    padding: 5px 0;
    border-top: 1px solid #ebebeb;
    border-bottom: 1px solid #ebebeb;
    font-size: 12px;
    letter-spacing: .13px
}

 .content .check_wrap {
    padding: 0 0 20px
}

 .content .title_check {
    position: relative;
    padding: 30px 0 6px;
    font-weight: 600;
    font-size: 18px;
    letter-spacing: .17px
}

 .content .title_check:before {
    position: absolute;
    top: 0;
    left: -16px;
    right: -16px;
    height: 8px;
    content: ""
}

 .content .title_check+.description {
    margin-top: 3px
}

 .content .add_check {
    position: relative;
    padding: 30px 0 6px;
    letter-spacing: .17px
}

 .content .btn_check {
    position: relative;
    width: 100%;
    height: 67px;
    min-height: 32px;
    padding-top: 25px;
    text-align: left;
    letter-spacing: .16px
}

 .content .more_info_list {
    padding: 15px 0;
    border-top: 1px solid #f2f2f2
}

 .content .more_info_list .more_list_item {
    color: rgba(34,34,34,.5);
    font-size: 11px;
    line-height: 14px;
    letter-spacing: .12px;
    margin-top: 2px
}

 .content .etc_desc {
    font-size: 13px;
    color: rgba(34,34,34,.6);
    margin-top: 5px
}

.category_list_items {
    width: 100%
}

.category_list_items:after {
    content: "";
    display: block;
    clear: both
}

.category_list_items tr {
    border-top: 1px solid #ebebeb;
    border-bottom: 1px solid #ebebeb
}

.category_list_items td {
    border-left: 1px solid #ebebeb;
    border-right: 1px solid #ebebeb
}

.category_list_items tr+tr {
    border-top: none
}

.category_list_items td+td {
    border-left: none
}

.category {
    color: rgba(34,34,34,.5);
    text-align: center;
    background-color: #fff;
    display: inline-flex;
    flex-direction: column-reverse;
    justify-content: center;
    font-size: 15px;
    letter-spacing: -.15px;
    height: 75px
}

.lg .category {
    font-size: 18px;
    letter-spacing: -.09px;
    height: 59px
}

.category.chunk_2 {
    width: 50%
}

.category.chunk_3 {
    width: 33.3333333333%
}

.category.category_on {
    color: #222;
    font-weight: 700
}

.category_text {
    padding-left: 18px;
    padding-right: 18px;
    margin: 0 auto;
    overflow: hidden
}

.lg .category_text {
    word-break: keep-all
}

.category_link {
    display: flex;
    height: 100%;
    align-items: center
}

.category_list {
    padding: 0 0 16px
}

.category {
    width: auto;
    padding: 0 17px
}

.mo .category_list,.sm .category_list {
    padding: 0 0 5px
}

.lg .category_list_items,.md .category_list_items {
    background: #fff;
    width: 100%;
    position: relative
}

.lg .category_list_items .vs__dropdown-toggle,.md .category_list_items .vs__dropdown-toggle {
    text-align: left;
    overflow: hidden;
    border: 1px solid #d3d3d3;
    box-sizing: border-box;
    border-radius: 6px;
    padding: 14px 16px
}

.lg .category_list_items .vs__selected-options .vs__search,.md .category_list_items .vs__selected-options .vs__search {
    font-size: 15px;
    letter-spacing: -.15px
}

.lg .category_list_items .vs__actions,.md .category_list_items .vs__actions {
    position: absolute;
    right: 10px;
    top: 14px
}

.lg .category_list_items .vs__actions [class*=ico-],.md .category_list_items .vs__actions [class*=ico-] {
    width: 20px;
    height: 20px
}

.lg .category_list_items .vs__dropdown-menu,.md .category_list_items .vs__dropdown-menu {
    min-width: 100%;
    position: absolute;
    top: 100%;
    padding: 4px 0;
    border: 1px solid #d3d3d3;
    border-radius: 8px;
    margin-top: 4px;
    background-color: #fff
}

.lg .category_list_items .vs__dropdown-option,.md .category_list_items .vs__dropdown-option {
    font-size: 15px;
    letter-spacing: -.15px;
    padding: 10px 16px 5px;
    color: rgba(34,34,34,.8)
}

.lg .category_list_items .vs__dropdown-option--highlight,.md .category_list_items .vs__dropdown-option--highlight {
    color: #222;
    font-weight: 700
}

.lg .category_list_items.vs--single.vs--open .vs__selected,.md .category_list_items.vs--single.vs--open .vs__selected {
    margin-top: 6px
}

.lg .category_list_items.vs--single.vs--disabled .vs__search,.lg .category_list_items.vs--single.vs--disabled .vs__selected,.md .category_list_items.vs--single.vs--disabled .vs__search,.md .category_list_items.vs--single.vs--disabled .vs__selected {
    color: rgba(34,34,34,.2)
}

.lg .category_list_items.vs--single.vs--disabled .vs__actions,.md .category_list_items.vs--single.vs--disabled .vs__actions {
    display: none
}

.lg .category_list_items .vs__selected,.md .category_list_items .vs__selected {
    font-size: 15px;
    letter-spacing: -.15px;
    font-weight: 700;
    color: #222
}

.dropdown_head {
    padding: 17px 0 19px;
    display: flex;
    align-items: center;
    border-bottom: 1px solid #ebebeb;
    cursor: pointer
}

.my_faq .dropdown_head {
    padding-top: 18px
}

.dropdown_head .sort {
    width: 68px;
    min-width: 68px;
    font-size: 14px;
    letter-spacing: -.21px
}

.dropdown_head .title_box {
    margin-right: 10px
}

.dropdown_head .date {
    margin-bottom: 1px;
    display: inline-flex;
    font-size: 12px;
    letter-spacing: -.06px
}

.dropdown_head .title {
    font-size: 15px;
    letter-spacing: -.15px
}

[class*=arr-lg] {
    margin-top: 10px;
    margin-left: auto;
    flex-shrink: 0;
    width: 32px;
    height: 32px
}

.my_faq [class*=arr-lg] {
    margin-top: 0
}

.dropdown_content {
    display: none;
    padding: 30px 30px 28px;
    background-color: #fafafa;
    border-bottom: 1px solid #ebebeb;
    font-size: 14px;
    letter-spacing: -.21px
}

.open .dropdown_content {
    display: block
}

.dropdown_content .content {
    max-width: 640px;
    word-break: break-word
}

.dropdown_content .sentence+.sentence,.dropdown_content p+.sentence {
    margin-top: 20px
}

.dropdown_content h1,.dropdown_content h2,.dropdown_content h3,.dropdown_content h4,.dropdown_content h5,.dropdown_content h6,.dropdown_content p {
    line-height: 24px
}

.dropdown_content h1,.dropdown_content h2 {
    color: #222;
    font-size: 20px;
    font-weight: 700
}

.dropdown_content h3 {
    color: #222;
    font-size: 16px;
    font-weight: 700
}

.dropdown_content h4 {
    color: #f15746
}

.dropdown_content a {
    color: #297dcb;
    text-decoration: underline
}

.dropdown_content ul {
    padding-left: 15px;
    line-height: 24px
}

.dropdown_content ul li {
    list-style: disc
}

.dropdown_content img {
    max-width: 100%
}

.dropdown_content figure.table {
    margin-top: 10px
}

.dropdown_content table {
    width: 100%;
    border-top: 1px solid #ebebeb;
    word-break: break-word;
    word-wrap: break-word;
    text-align: center
}

.dropdown_content table th {
    color: rgba(34,34,34,.5);
    font-weight: 400
}

.dropdown_content table thead th {
    height: 48px;
    color: #333;
    background-color: #f4f4f4;
    border-top: 1px solid #ebebeb;
    border-bottom: 1px solid #ebebeb;
    text-align: left;
    padding: 15px;
    font-size: 13px;
    font-weight: 700
}

.dropdown_content table tbody td,.dropdown_content table tbody th {
    height: 48px;
    padding: 4px 15px;
    border: none;
    border-top: 1px solid #ebebeb
}

.dropdown_content table tbody th {
    padding: 4px 0;
    text-align: left
}

.dropdown_content table tbody td {
    text-align: left;
    vertical-align: center;
    background-color: #fcfcfc
}

.dropdown_content table td [class*=text] {
    display: block;
    margin-top: -1px
}

.dropdown_content table td .text_info_normal {
    color: rgba(34,34,34,.5)
}

.dropdown_content table td .text_info_warning {
    color: #f15746
}

.dropdown_content table br {
    display: none
}

.mo .dropdown_content,.sm .dropdown_content {
    padding: 20px
}

.btn_layer_close {
    cursor: pointer
}

.dropdown_head {
    padding: 17px 0 19px;
    display: flex;
    align-items: center;
    border-bottom: 1px solid #ebebeb;
    cursor: pointer
}

.my_faq .dropdown_head {
    padding-top: 18px
}

.dropdown_head .sort {
    width: 68px;
    min-width: 68px;
    font-size: 14px;
    letter-spacing: -.21px
}

.dropdown_head .title_box {
    margin-right: 10px
}

.dropdown_head .date {
    margin-bottom: 1px;
    display: inline-flex;
    font-size: 12px;
    letter-spacing: -.06px
}

.dropdown_head .title {
    font-size: 15px;
    letter-spacing: -.15px
}

[class*=arr-lg] {
    margin-top: 10px;
    margin-left: auto;
    flex-shrink: 0;
    width: 32px;
    height: 32px
}

.my_faq [class*=arr-lg] {
    margin-top: 0
}

.dropdown_content {
    display: none;
    padding: 30px 30px 28px;
    background-color: #fafafa;
    border-bottom: 1px solid #ebebeb;
    font-size: 14px;
    letter-spacing: -.21px
}

.open .dropdown_content {
    display: block
}

.dropdown_content .content {
    max-width: 640px;
    word-break: break-word
}

.dropdown_content .sentence+.sentence,.dropdown_content p+.sentence {
    margin-top: 20px
}

.dropdown_content h1,.dropdown_content h2,.dropdown_content h3,.dropdown_content h4,.dropdown_content h5,.dropdown_content h6,.dropdown_content p {
    line-height: 24px
}

.dropdown_content h1,.dropdown_content h2 {
    color: #222;
    font-size: 20px;
    font-weight: 700
}

.dropdown_content h3 {
    color: #222;
    font-size: 16px;
    font-weight: 700
}

.dropdown_content h4 {
    color: #f15746
}

.dropdown_content a {
    color: #297dcb;
    text-decoration: underline
}

.dropdown_content ul {
    padding-left: 15px;
    line-height: 24px
}

.dropdown_content ul li {
    list-style: disc
}

.dropdown_content img {
    max-width: 100%
}

.dropdown_content figure.table {
    margin-top: 10px
}

.dropdown_content table {
    width: 100%;
    border-top: 1px solid #ebebeb;
    word-break: break-word;
    word-wrap: break-word;
    text-align: center
}

.dropdown_content table th {
    color: rgba(34,34,34,.5);
    font-weight: 400
}

.dropdown_content table thead th {
    height: 48px;
    color: #333;
    background-color: #f4f4f4;
    border-top: 1px solid #ebebeb;
    border-bottom: 1px solid #ebebeb;
    text-align: left;
    padding: 15px;
    font-size: 13px;
    font-weight: 700
}

.dropdown_content table tbody td,.dropdown_content table tbody th {
    height: 48px;
    padding: 4px 15px;
    border: none;
    border-top: 1px solid #ebebeb
}

.dropdown_content table tbody th {
    padding: 4px 0;
    text-align: left
}

.dropdown_content table tbody td {
    text-align: left;
    vertical-align: center;
    background-color: #fcfcfc
}

.dropdown_content table td [class*=text] {
    display: block;
    margin-top: -1px
}

.dropdown_content table td .text_info_normal {
    color: rgba(34,34,34,.5)
}

.dropdown_content table td .text_info_warning {
    color: #f15746
}

.dropdown_content table br {
    display: none
}

.mo .dropdown_content,.sm .dropdown_content {
    padding: 20px
}

.dropdown_content {
    display: block;
    padding: 0;
    background-color: #fff;
    border-bottom: none
}

.mo .dropdown_content,.sm .dropdown_content {
    padding: 0
}

.layer_image .layer_container {
    padding: 10px 0 0;
    width: 520px
}

.footer {
    margin-left: auto;
    margin-right: auto;
    max-width: 1280px;
    padding-top: 50px;
    padding-bottom: 50px;
    border-top: 1px solid #ebebeb
}

.lg .footer {
    padding-left: 40px;
    padding-right: 40px
}

.container.buy~.footer.mo,.container.buy~.footer.sm,.container.detail~.footer.mo,.container.detail~.footer.sm,.container.help~.footer.mo,.container.help~.footer.sm,.container.join~.footer.mo,.container.join~.footer.sm,.container.login~.footer.mo,.container.login~.footer.sm,.container.password~.footer.mo,.container.password~.footer.sm,.container.promotion~.footer {
    display: none
}

.detail.lucky_draw_column~.footer.mo,.detail.lucky_draw_column~.footer.sm {
    display: block
}

.footer .inner {
    position: relative
}

.service_area {
    display: flex;
    flex-direction: row-reverse;
    justify-content: space-between;
    padding-bottom: 56px;
    border-bottom: 1px solid #ebebeb
}

.service_title {
    display: inline-flex;
    align-items: center;
    font-size: 16px;
    letter-spacing: -.16px;
    font-weight: 700
}

.sevice_tel {
    margin-left: 4px;
    letter-spacing: normal
}

.service_time {
    padding-top: 8px
}

.time_box {
    line-height: 17px
}

.time_box:after {
    content: "";
    display: block;
    clear: both
}

.time_box+.time_box {
    padding-top: 4px
}

.time_description,.time_term {
    float: left;
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.5);
    max-width: 263px;
    line-height: 20px
}

.lg .time_description,.lg .time_term {
    max-width: 263px
}

.time_term {
    margin-right: 4px
}

.service_noti {
    padding-top: 8px;
    font-size: 13px;
    letter-spacing: -.07px
}

.service_btn_box {
    padding-top: 17px
}

.service_btn_box .btn {
    border-radius: 0;
    color: #fafafa
}

.footer_menu {
    display: flex
}

.menu_box {
    width: 160px
}

.menu_box+.menu_box {
    margin-left: 80px
}

.menu_title {
    font-size: 16px;
    letter-spacing: -.16px
}

.menu_list {
    padding-top: 16px
}

.menu_list:after {
    content: "";
    display: block;
    clear: both
}

.menu_item+.menu_item {
    margin-top: 12px
}

.menu_link {
    display: inline-block;
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.5)
}

.corporation_area {
    position: relative;
    margin-top: 30px
}

.term_list {
    padding-bottom: 16px;
    display: inline-flex
}

.term_item {
    margin-right: 20px
}

.term_link {
    display: block;
    font-size: 14px;
    letter-spacing: -.21px;
    color: #000
}

.privacy .term_link {
    font-weight: 700
}

.footer_sns {
    position: absolute;
    top: 0;
    right: 0
}

.sns_box {
    font-size: 0
}

.sns {
    display: inline-block
}

.sns+.sns {
    margin-left: 20px
}

.btn_business {
    display: none
}

.info_list:after {
    content: "";
    display: block;
    clear: both
}

.info_item {
    float: left;
    margin-right: 17px
}

.info_item:last-child {
    margin-right: 0
}

.business_title {
    float: left;
    line-height: 20px;
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.5)
}

.lg .business_title {
    max-width: 653px
}

.business_title a {
    text-decoration: underline;
    cursor: pointer
}

.business_title .blank {
    margin-right: 17px
}

.business_title {
    margin-right: 4px
}

.license_link {
    margin-left: 3px
}

.license_link,.license_link:active,.license_link:focus,.license_link:hover {
    text-decoration: underline
}

.notice_guarantee {
    padding: 40px 0 8px;
    font-size: 12px;
    letter-spacing: -.06px
}

.notice_guarantee .title {
    font-weight: 700
}

.notice_guarantee .description {
    margin-top: 4px;
    color: rgba(34,34,34,.5)
}

.notice_guarantee .link_guarantee {
    margin-left: 4px;
    text-decoration: underline
}

.notice_area {
    padding-top: 12px;
    display: flex;
    align-items: flex-end
}

.notice {
    max-width: 605px;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.4)
}

.copyright {
    margin-left: auto;
    flex-shrink: 0;
    font-size: 12px;
    color: rgba(34,34,34,.3)
}

.footer.mo,.footer.sm {
    padding: 40px 24px
}

.footer.mo .service_area,.footer.sm .service_area {
    display: block;
    padding-bottom: 50px
}

.footer.mo .footer_menu,.footer.sm .footer_menu {
    margin-top: 50px
}

.footer.mo .menu_box,.footer.sm .menu_box {
    width: 50%
}

.footer.mo .menu_box+.menu_box,.footer.sm .menu_box+.menu_box {
    margin-left: 20px
}

.footer.mo .menu_title,.footer.sm .menu_title {
    font-size: 15px;
    letter-spacing: -.15px;
    font-weight: 700
}

.footer.mo .term_list,.footer.sm .term_list {
    padding-bottom: 50px
}

.footer.mo .term_list .term_item,.footer.sm .term_list .term_item {
    margin-right: 12px
}

.footer.mo .footer_sns,.footer.sm .footer_sns {
    position: relative;
    display: flex;
    align-items: center
}

.footer.mo .btn_business,.footer.sm .btn_business {
    display: block;
    margin-left: auto;
    flex-shrink: 0;
    font-size: 13px;
    letter-spacing: -.07px
}

.footer.mo .btn_business [class*=arr-],.footer.sm .btn_business [class*=arr-] {
    width: 16px;
    height: 16px;
    vertical-align: top
}

.footer.mo .business_info,.footer.sm .business_info {
    display: none
}

.footer.mo .business_info.open,.footer.sm .business_info.open {
    padding-top: 20px;
    display: block
}

.footer.mo .info_item,.footer.sm .info_item {
    float: none
}

.footer.mo .info_item:after,.footer.sm .info_item:after {
    content: "";
    display: block;
    clear: both
}

.footer.mo .info_item+.info_item,.footer.sm .info_item+.info_item {
    margin-left: 0
}

.footer.mo .pc_escrow_area,.footer.sm .pc_escrow_area {
    display: none
}

.footer.mo .notice_area,.footer.sm .notice_area {
    display: block;
    padding-top: 20px
}

.footer.mo .notice,.footer.sm .notice {
    max-width: none;
    line-height: 16px
}

.footer.mo .copyright,.footer.sm .copyright {
    padding-top: 50px;
    text-align: center
}

.footer.mo.only_copyright,.footer.sm.only_copyright {
    border-top: 0;
    padding-top: 68px
}

.footer.mo.only_copyright .corporation_area,.footer.mo.only_copyright .notice,.footer.mo.only_copyright .service_area,.footer.sm.only_copyright .corporation_area,.footer.sm.only_copyright .notice,.footer.sm.only_copyright .service_area {
    display: none
}

.footer.mo.only_copyright .copyright,.footer.mo.only_copyright .notice_area,.footer.sm.only_copyright .copyright,.footer.sm.only_copyright .notice_area {
    padding-top: 0
}

.footer.mo.floating_price,.footer.sm.floating_price {
    padding: 23px 24px 169px
}

.footer.sm.floating_price,.footer.sm {
    padding-left: 16px;
    padding-right: 16px
}

.menu_item+.menu_item {
    margin-top: 12px
}

.menu_link {
    line-height: 18px;
    font-size: 15px;
    letter-spacing: -.15px;
    color: rgba(34,34,34,.5)
}

.menu_link.active {
    color: #222;
    font-weight: 700
}

.mo .snb_menu .menu_item,.sm .snb_menu .menu_item {
    margin-top: 0;
    border-bottom: 1px solid #ebebeb
}

.mo .snb_menu .menu_item:last-child,.sm .snb_menu .menu_item:last-child {
    border-bottom: 0
}

.mo .snb_menu .menu_link,.sm .snb_menu .menu_link {
    display: block;
    padding: 18px 0 19px;
    font-size: 15px;
    letter-spacing: -.15px;
    color: #222
}

.snb_list+.snb_list {
    margin-top: 40px
}

.snb_title {
    line-height: 22px;
    margin-bottom: 12px;
    display: inline-block;
    vertical-align: top;
    font-size: 18px;
    letter-spacing: -.27px;
    font-weight: 700
}

.mo .snb,.sm .snb {
    padding: 36px 24px 0
}

.mo .snb .snb_title,.sm .snb .snb_title {
    margin-bottom: 7px;
    font-size: 16px;
    letter-spacing: -.16px
}

.sm .snb {
    padding-left: 16px;
    padding-right: 16px
}

.wrap {
    position: relative;
    padding-top: 86px
}

@media(max-width: 768px) {
    .wrap {
        padding-top:52px
    }
}

.header {
    box-shadow: none
}

.container.customer {
    margin-left: auto;
    margin-right: auto;
    max-width: 1280px;
    padding: 40px 40px 160px
}

.container.customer.mo,.container.customer.sm {
    padding: 0;
    border-bottom: 0
}

.container.customer .snb_area {
    float: left;
    width: 160px;
    margin-right: 40px
}

.container.customer .snb_main_title {
    padding-bottom: 25px;
    font-size: 32px;
    letter-spacing: -.48px;
    color: #000;
    text-transform: uppercase
}

.container.customer .content_area {
    overflow: hidden
}

.wrap.in_app {
    padding-top: 0
}

.header {
    position: fixed;
    left: 0;
    right: 0;
    top: 0;
    z-index: 2000;
    background-color: transparent;
    width: 100%;
    min-width: 320px;
    height: 64px;
    text-align: right;
    font-size: 0
}

.header.sticky {
    position: -webkit-sticky;
    position: sticky
}

.header .hd_logo {
    width: 100px;
    height: 16px;
    position: absolute;
    top: 26px;
    left: 40px
}

.header .hd_logo a {
    width: 100px;
    height: 16px;
    display: block;
    background-image: url(/_nuxt/img/sprite.ebdfa88.png);
    background-repeat: no-repeat;
    background-size: 250px 100px;
    background-position: 0 -30px
}

.header .hd_sns {
    display: inline-block;
    vertical-align: middle;
    padding: 20px 40px
}

.header .hd_sns .sns {
    display: inline-block;
    width: 24px;
    height: 24px;
    margin-right: 24px
}

.header .hd_sns .sns.facebook {
    background-position: -48px 0
}

.header .hd_sns .sns.facebook,.header .hd_sns .sns.instagram {
    background-image: url(/_nuxt/img/sprite.ebdfa88.png);
    background-repeat: no-repeat;
    background-size: 250px 100px
}

.header .hd_sns .sns.instagram {
    margin-right: 0;
    background-position: -77px 0
}

.header.dark .hd_logo a {
    background-position: 0 -52px
}

.header.dark .hd_logo a,.header.dark .hd_sns .sns.facebook {
    background-image: url(/_nuxt/img/sprite.ebdfa88.png);
    background-repeat: no-repeat;
    background-size: 250px 100px
}

.header.dark .hd_sns .sns.facebook {
    background-position: -106px 0
}

.header.dark .hd_sns .sns.instagram {
    margin-right: 0;
    background-image: url(/_nuxt/img/sprite.ebdfa88.png);
    background-repeat: no-repeat;
    background-size: 250px 100px;
    background-position: -135px 0
}

.header.bg_white {
    background-color: #fff
}

@media(max-width: 768px) {
    .header {
        background-color:#fff
    }

    .header .hd_logo {
        left: 24px
    }

    .header .hd_sns {
        padding-right: 24px
    }
}

@media(max-width: 449px) {
    .header .hd_logo {
        left:16px
    }

    .header .hd_sns {
        padding-right: 16px
    }
}

.lg .description_list,.md .description_list {
    padding: 20px 32px 30px
}

.mo .description_list,.sm .description_list {
    padding: 10px 20px 20px
}

.description {
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.8);
    line-height: 18px;
    margin-bottom: 6px
}

.guide_info {
    padding-bottom: 40px
}

.guide_info .thumb {
    max-width: 320px;
    max-height: 200px;
    margin: 0 auto
}

.guide_info .thumb .img {
    width: 100%
}

.guide_info .desc {
    margin-top: 16px
}

.guide_info .desc .desc_title {
    font-weight: 600;
    font-size: 22px;
    line-height: 26px;
    margin-bottom: 16px
}

.guide_info .desc .desc_txt {
    line-height: 20px;
    font-size: 15px;
    letter-spacing: -.15px
}

.inventory_process .title_txt {
    margin-bottom: 25px
}

.inventory_process .process_thumb {
    position: relative;
    overflow: hidden;
    width: 100%;
    height: 375px;
    border-radius: 20px;
    background: #fafafa no-repeat 50%/326px
}

.inventory_process.inventory_keep_process_2 .process_thumb {
    height: 151px;
    background-size: 310px 100px
}

.inventory_process.inventory_keep_process_3 .process_thumb {
    height: 151px;
    background-size: 190px 100px
}

@media(max-width: 374px) {
    .inventory_process .process_thumb {
        zoom:.8
    }
}

.title_txt {
    line-height: 26px;
    font-size: 22px;
    font-weight: 600;
    letter-spacing: -.15px;
    color: #000
}

.inventory_pass_type {
    margin-top: 59px
}

.inventory_pass_type .title_txt {
    margin-bottom: 38px
}

.inventory_pass_type .pass_type_list {
    position: relative;
    display: flex;
    justify-content: space-between;
    margin-bottom: 37px
}

.inventory_pass_type .pass_type_list:before {
    content: "";
    position: absolute;
    top: 0;
    left: 50%;
    bottom: 4px;
    width: 1px;
    background-color: #ebebeb
}

.inventory_pass_type .pass_type_item {
    width: calc(50% - 12px);
    padding: 0 5px;
    text-align: center
}

.inventory_pass_type .thumb_area {
    max-width: 166px;
    margin: 0 auto
}

.inventory_pass_type .thumb_area .img {
    width: 100%
}

.inventory_pass_type .text_area {
    margin-top: 7px
}

.inventory_pass_type .text_area .title {
    display: block;
    line-height: 19px;
    margin-bottom: 6px;
    font-size: 16px;
    letter-spacing: -.16px;
    font-weight: 700
}

.inventory_pass_type .text_area .desc {
    line-height: 20px;
    font-size: 13px;
    letter-spacing: -.07px;
    letter-spacing: -.15px;
    color: rgba(34,34,34,.5)
}

.inventory_pass_type .pass_type_desc {
    line-height: 22px;
    margin-top: 37px;
    font-size: 16px;
    letter-spacing: -.16px;
    font-weight: 600;
    letter-spacing: normal
}

.inventory_desc_keep {
    font-size: 13px;
    letter-spacing: -.07px;
    padding: 16px 0 40px;
    border-bottom: 2px solid #222;
    margin-bottom: 22px
}

.notice_desc {
    line-height: 22px;
    padding-bottom: 39px;
    margin-bottom: 21px;
    font-size: 16px;
    letter-spacing: -.16px;
    font-weight: 600;
    border-bottom: 2px solid #222;
    word-break: keep-all
}

.mo .inventory_pass_type .pass_type_item,.sm .inventory_pass_type .pass_type_item {
    width: calc(50% - 10px);
    padding: 0
}

.table_info {
    margin-top: 13px
}

.table_info .table {
    width: 100%;
    table-layout: fixed
}

.table_info .table_td,.table_info .table_th {
    width: 50%;
    line-height: 18px;
    letter-spacing: -.15px;
    text-align: center
}

.table_info .table_th {
    padding: 5px 4px 7px;
    font-size: 13px;
    letter-spacing: -.07px;
    font-weight: 700;
    color: rgba(34,34,34,.5);
    background-color: #f4f4f4
}

.table_info .table_td {
    padding: 8px 4px 7px;
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.8)
}

.table_info .table_td strong {
    font-weight: 700
}

.table_info .table_desc {
    line-height: 16px;
    margin-top: 7px;
    font-size: 13px;
    letter-spacing: -.07px;
    letter-spacing: -.15px;
    color: rgba(34,34,34,.4)
}

.list_item {
    padding-top: 21px;
    padding-bottom: 20px
}

.list_item:first-child {
    padding-top: 0
}

.list_item+.list_item {
    border-top: 1px solid #ebebeb
}

.list_item .list_title {
    line-height: 22px;
    margin-bottom: 8px;
    font-size: 18px;
    letter-spacing: -.27px;
    font-weight: 700;
    color: #000
}

.list_item .list_desc {
    font-size: 14px;
    letter-spacing: -.21px;
    letter-spacing: -.15px;
    color: rgba(34,34,34,.8)
}

.list_item .list_desc .text_desc>.details_list {
    margin-top: 8px
}

.list_item .sub_desc {
    display: block;
    line-height: 16px;
    margin-top: 3px;
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.4)
}

.list_item .text_link {
    display: inline-block;
    vertical-align: top;
    margin-top: 4px;
    text-decoration: underline;
    color: #297dcb
}

.list_item img {
    width: 100%;
    padding: 20px 16.5px
}

.guide_desc_list_keep {
    border-top: 2px solid #222;
    padding-top: 22px
}

.layer_about_guide .layer_container {
    overflow: hidden;
    display: flex;
    flex-direction: column;
    width: 440px;
    height: 600px;
    box-sizing: border-box
}

.layer_about_guide .layer_header {
    padding-top: 58px
}

.layer_about_guide .layer_content {
    overflow-y: auto;
    margin-right: 8px;
    margin-bottom: 32px;
    margin-left: 11px
}

.layer_about_guide .layer_content::-webkit-scrollbar {
    width: 3px
}

.layer_about_guide .layer_content::-webkit-scrollbar-thumb {
    border-radius: 4px;
    background-color: #ebebeb
}

.layer_about_guide .layer_content .title {
    display: flex;
    justify-content: center;
    align-items: center;
    line-height: 38px;
    padding-bottom: 18px;
    font-size: 32px;
    letter-spacing: -.48px;
    font-weight: 700;
    letter-spacing: -.15px
}

.layer_about_guide .layer_content [class*=ico-] {
    width: 25px;
    height: 31px;
    vertical-align: top;
    margin-right: 8px
}

.layer_about_guide .about_guide {
    padding: 0 21px
}

.mo .layer_about_guide,.sm .layer_about_guide {
    z-index: 9999
}

.mo .layer_about_guide .layer_container,.sm .layer_about_guide .layer_container {
    height: calc(100% - 40px)
}

.mo .layer_about_guide .layer_content,.sm .layer_about_guide .layer_content {
    height: calc(100vh - 96px);
    margin-right: 5px;
    margin-left: 8px;
    margin-bottom: 0
}

.mo .layer_about_guide .about_guide,.sm .layer_about_guide .about_guide {
    max-width: 500px;
    margin: 0 auto;
    padding: 0 8px
}

@media(max-width: 374px) {
    .layer_about_guide .inventory_process .process_thumb {
        zoom:.8
    }
}

.header.mo,.header.sm {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000;
    background-color: #fff
}

.is_scroll .header.mo,.is_scroll .header.sm {
    box-shadow: 0 1px 0 0 rgba(0,0,0,.1)
}

.header.mo.feed_product .inner,.header.sm.feed_product .inner {
    padding: 0 24px 0 60px
}

.header.mo .inner,.header.sm .inner {
    position: relative;
    padding: 0 50px;
    min-width: 320px;
    height: 60px
}

.header.mo .btn_cancel,.header.mo .btn_close,.header.sm .btn_cancel,.header.sm .btn_close {
    position: absolute;
    top: 18px;
    left: 22px;
    height: 24px
}

.header.mo .title,.header.sm .title {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%
}

.header.mo .title_txt,.header.sm .title_txt {
    display: inline-block;
    font-size: 18px;
    letter-spacing: -.27px;
    font-weight: 700;
    color: #000
}

.header.mo .btn_standard,.header.sm .btn_standard {
    position: absolute;
    top: 50%;
    margin-top: -17px;
    right: 22px
}

.header.mo .btn_help,.header.sm .btn_help {
    position: absolute;
    top: 20px;
    right: 22px
}

.header.mo .btn_help [class*=ico-],.header.sm .btn_help [class*=ico-] {
    vertical-align: top
}

.header.sm .btn_cancel,.header.sm .btn_close {
    left: 14px
}

.header.sm .btn_help,.header.sm .btn_standard {
    right: 18px
}

.header.sm.feed_product .inner {
    padding: 0 16px 0 60px
}

.wrap {
    position: relative;
    padding-top: 92px
}

.wrap .footer_simple {
    font-family: Roboto;
    font-size: 12px;
    color: rgba(34,34,34,.3);
    text-align: center;
    padding-bottom: 40px
}

.wrap.mo,.wrap.sm {
    padding-top: 52px;
    min-height: 100vh
}

.mo .header.product .inner {
    padding: 0 24px 0 60px
}

.sm .header.product .inner {
    padding: 0 16px 0 60px
}

.wrap {
    padding-top: 60px;
    min-height: 100vh
}

.header {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000;
    background-color: #fff
}

.is_scroll .header {
    box-shadow: 0 1px 0 0 rgba(0,0,0,.1)
}

.header .inner {
    position: relative;
    padding: 0 50px;
    min-width: 320px;
    height: 60px
}

.header .btn_cancel,.header .btn_close {
    position: absolute;
    top: 18px;
    left: 22px;
    height: 24px
}

.header .title {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%
}

.header .title_txt {
    display: inline-block;
    font-size: 18px;
    letter-spacing: -.27px;
    font-weight: 700;
    color: #000
}

.wrap {
    position: relative;
    padding-top: 86px
}

@media(max-width: 768px) {
    .wrap {
        padding-top:60px;
        min-height: 100vh
    }
}

.header {
    box-shadow: none
}

.header.lg,.header.md {
    box-shadow: 0 1px 0 0 rgba(0,0,0,.1)
}

.container.my {
    margin-left: auto;
    margin-right: auto;
    max-width: 1280px;
    padding: 40px 40px 160px
}

.container.my.mo,.container.my.sm {
    padding: 0;
    border-bottom: 0
}

.container.my .snb_area {
    float: left;
    width: 180px;
    margin-right: 20px
}

.container.my .snb_main_title {
    line-height: 29px;
    padding-bottom: 30px;
    font-size: 24px;
    letter-spacing: -.36px;
    font-weight: 700;
    letter-spacing: -.15px
}

.container.my .content_area {
    overflow: hidden;
    min-height: 380px
}

 .text-danger {
    color: #f15746
}

 .text-warning {
    color: #ff7500
}

body {
    margin: 0
}

.btn_standard {
    padding: 0 20px;
    font-weight: 600
}

.wrap {
    position: relative;
    padding-top: 92px
}

.wrap.mo,.wrap.sm {
    padding-top: 60px;
    min-height: 100vh
}

.wrap.mo .header,.wrap.sm .header {
    box-shadow: none
}

.wrap[data-v-71d8ff3c] {
    position: relative;
    padding-top: 86px
}

.wrap.mo[data-v-71d8ff3c],.wrap.sm[data-v-71d8ff3c] {
    padding-top: 52px;
    min-height: 100vh
}

.wrap.mo[data-v-71d8ff3c] .header,.wrap.sm[data-v-71d8ff3c] .header {
    box-shadow: none
}

[data-v-71d8ff3c] .header {
    box-shadow: 0 1px 0 0 rgba(0,0,0,.1)
}

.wrap[data-v-1d0b532e] {
    position: relative;
    padding-top: 86px;
    overflow-anchor: none
}

.wrap.has_tab[data-v-1d0b532e] {
    padding-top: 130px
}

.md.wrap[data-v-1d0b532e],.mo.wrap[data-v-1d0b532e],.sm.wrap[data-v-1d0b532e] {
    padding-top: 52px
}

.md.wrap.has_tab[data-v-1d0b532e],.mo.wrap.has_tab[data-v-1d0b532e],.sm.wrap.has_tab[data-v-1d0b532e] {
    padding-top: 96px
}

.md.wrap.has_title[data-v-1d0b532e],.mo.wrap.has_title[data-v-1d0b532e],.sm.wrap.has_title[data-v-1d0b532e] {
    padding-top: 0
}

.show_banner .md.wrap[data-v-1d0b532e],.show_banner .mo.wrap[data-v-1d0b532e],.show_banner .sm.wrap[data-v-1d0b532e] {
    padding-top: 122px
}

.show_banner .md.wrap.has_tab[data-v-1d0b532e],.show_banner .mo.wrap.has_tab[data-v-1d0b532e],.show_banner .sm.wrap.has_tab[data-v-1d0b532e] {
    padding-top: 166px
}

.md.wrap.in_app[data-v-1d0b532e],.mo.wrap.in_app[data-v-1d0b532e],.sm.wrap.in_app[data-v-1d0b532e] {
    padding-top: 0
}

.wrap[data-v-729e890f] {
    position: relative
}

.gnb[data-v-729e890f] {
    position: -webkit-sticky;
    position: sticky;
    top: 0;
    background: #fff;
    z-index: 2
}

.feed_product[data-v-3dc3858a] {
    display: flex;
    align-items: center;
    justify-content: center
}

.product[data-v-3dc3858a],.product_img[data-v-3dc3858a] {
    border-radius: 6px
}

.product_img[data-v-3dc3858a] {
    width: 44px;
    height: 44px
}

.product_name[data-v-3dc3858a] {
    padding-left: 8px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    font-size: 18px;
    letter-spacing: -.09px;
    font-weight: 600;
    letter-spacing: -.33px
}

.mo .feed_product[data-v-3dc3858a],.sm .feed_product[data-v-3dc3858a] {
    padding: 14px 0;
    justify-content: left;
    max-width: none
}

.mo .product_img[data-v-3dc3858a],.sm .product_img[data-v-3dc3858a] {
    width: 32px;
    height: 32px;
    border-radius: 6px
}

.mo .product_name[data-v-3dc3858a],.sm .product_name[data-v-3dc3858a] {
    padding-left: 8px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    font-size: 12px;
    letter-spacing: -.33px;
    font-weight: 400
}

.title[data-v-10a177b0] {
    text-align: center;
    font-size: 24px;
    letter-spacing: -.12px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap
}

.mo .title[data-v-10a177b0],.sm .title[data-v-10a177b0] {
    font-size: 20px;
    letter-spacing: -.1px;
    padding-bottom: 16px
}

.style_tab_list[data-v-95b3d07c] {
    text-align: center
}

.container .style_tab_list[data-v-95b3d07c] {
    padding-bottom: 17px
}

.style_tab_list .header_title[data-v-95b3d07c] {
    font-size: 28px;
    letter-spacing: -.12px;
    font-weight: 600;
    padding: 20px 0 16px
}

.style_tab_list .header_switch[data-v-95b3d07c] {
    display: inline-flex;
    padding-top: 16px
}

.style_tab_list .header_switch .tab_item[data-v-95b3d07c] {
    padding: 8px 14px;
    min-width: 59px;
    text-align: center;
    font-size: 18px;
    letter-spacing: -.27px
}

.style_tab_list .header_switch .tab_item.tab_on[data-v-95b3d07c] {
    background-color: #222;
    color: #fff;
    font-weight: 700;
    border-radius: 19px
}

.is_scroll .header_title[data-v-95b3d07c] {
    padding: 0 0 16px
}

.mo .header_switch[data-v-95b3d07c],.sm .header_switch[data-v-95b3d07c] {
    padding: 0
}

.mo .style_tab_list[data-v-95b3d07c],.sm .style_tab_list[data-v-95b3d07c] {
    height: 100%;
    align-items: center;
    margin-bottom: 20px;
    padding-bottom: 0
}

.mo .style_tab_list .tab_item[data-v-95b3d07c],.sm .style_tab_list .tab_item[data-v-95b3d07c] {
    padding: 6px 14px;
    min-width: 56px;
    font-size: 16px;
    letter-spacing: -.16px
}

.mo .is_scroll .style_tab_list[data-v-95b3d07c],.sm .is_scroll .style_tab_list[data-v-95b3d07c] {
    position: fixed;
    top: 52px;
    left: 0;
    right: 0;
    z-index: 1;
    background-color: #fff;
    height: 40px;
    padding-bottom: 8px;
    -webkit-filter: drop-shadow(0 1px 1px rgba(0,0,0,.1));
    filter: drop-shadow(0 1px 1px rgba(0,0,0,.1))
}

.title_user[data-v-3440fcb6] {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%
}

.profile_img_box[data-v-3440fcb6] {
    overflow: hidden;
    position: relative;
    margin-right: 8px;
    width: 32px;
    height: 32px;
    border-radius: 100%
}

.profile_img_box[data-v-3440fcb6]:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    border: 1px solid rgba(34,34,34,.1);
    border-radius: inherit
}

.profile_img[data-v-3440fcb6] {
    width: 100%;
    height: 100%;
    -o-object-fit: cover;
    object-fit: cover
}

.user_name[data-v-3440fcb6] {
    font-size: 18px;
    letter-spacing: -.27px;
    font-weight: 600
}

.user_name.is_official[data-v-3440fcb6]:after {
    content: "";
    margin-left: 2px;
    display: inline-flex;
    width: 12px;
    height: 12px;
    background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCAxMiAxMiI+PGNpcmNsZSBjeD0iNiIgY3k9IjYiIHI9IjYiIGZpbGw9IiMzMzMiLz48cGF0aCBzdHJva2U9IiNGQUZBRkEiIHN0cm9rZS13aWR0aD0iMS4wNSIgZD0iTTIuOTk5IDUuNjI1bDIuMjUgMi4yNSAzLjc1LTMuNzUiLz48L3N2Zz4=) 0 0 no-repeat
}

.social_header_title[data-v-256ac97c] {
    display: flex;
    justify-content: center;
    align-items: center
}

.lg .social_header_title[data-v-256ac97c] {
    min-height: 64px
}

.is_scroll .social_header_title[data-v-256ac97c] {
    border-bottom: 1px solid #fafafa
}

.layout_base:not(.is_scroll) .social_header_title.show_only_scroll[data-v-256ac97c] {
    display: none
}

.wrap[data-v-a9924c44] {
    position: relative;
    padding-top: 86px
}

.wrap.disable[data-v-a9924c44] {
    padding-top: 126px
}

.wrap.mo[data-v-a9924c44],.wrap.sm[data-v-a9924c44] {
    padding-top: 52px;
    min-height: 100vh
}

.wrap.mo .btn.btn_follow[data-v-a9924c44],.wrap.sm .btn.btn_follow[data-v-a9924c44] {
    padding: 0 20px
}

.btn.btn_follow[data-v-a9924c44] {
    padding: 0 24px
}

.mo[data-v-a9924c44] .header.product .inner {
    padding: 0 24px 0 60px
}

.sm[data-v-a9924c44] .header.product .inner {
    padding: 0 16px 0 60px
}

.mo[data-v-a9924c44] .header.text .inner {
    padding: 0 24px 0 60px
}

.sm[data-v-a9924c44] .header.text .inner {
    padding: 0 16px 0 60px
}

.wrap[data-v-22660d63] {
    position: relative
}

.gnb[data-v-22660d63] {
    top: 0
}

.bottom_sticky[data-v-22660d63],.gnb[data-v-22660d63] {
    z-index: 2;
    position: -webkit-sticky;
    position: sticky;
    background: #fff
}

.bottom_sticky[data-v-22660d63] {
    top: var(--global-header-height)
}

.page_title[data-v-22660d63] {
    padding-top: 16px;
    padding-bottom: 16px;
    font-size: 28px;
    letter-spacing: -.12px;
    font-weight: 600;
    text-align: center
}

.wrap[data-v-5305ca03] {
    position: relative;
    padding-top: 86px
}

.wrap.mo[data-v-5305ca03],.wrap.sm[data-v-5305ca03] {
    padding-top: 52px;
    min-height: 100vh
}

.mo[data-v-5305ca03] .header.product .inner {
    padding: 0 24px 0 60px
}

.sm[data-v-5305ca03] .header.product .inner {
    padding: 0 16px 0 60px
}

.layout_base.is_scroll .hide_when_scroll[data-v-5305ca03],.layout_base:not(.is_scroll) .show_when_scroll[data-v-5305ca03] {
    display: none
}

.wrap .header[data-v-095e8d6d] {
    background-color: #fff
}

.is_scroll .wrap .header[data-v-095e8d6d] {
    box-shadow: 0 1px 0 0 rgba(0,0,0,.1)
}
.flicking-viewport {
    position: relative;
    overflow: hidden
}

.flicking-viewport.vertical,.flicking-viewport.vertical>.flicking-camera {
    display: -webkit-inline-box;
    display: -ms-inline-flexbox;
    display: inline-flex
}

.flicking-viewport.vertical>.flicking-camera {
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column
}

.flicking-viewport.flicking-hidden>.flicking-camera>* {
    visibility: hidden
}

.flicking-camera {
    width: 100%;
    height: 100%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    position: relative;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    -ms-flex-direction: row;
    flex-direction: row;
    z-index: 1;
    will-change: transform
}

.flicking-camera>* {
    -ms-flex-negative: 0;
    flex-shrink: 0
}

	
</style>
<script type="text/javascript">
</script>
</head>
<body>
	<header>
		<%@ include file="../inc/header.jsp"%>
	</header>
	
	<article>
		<div class="container">
<!-- 			<nav id="mainNav" class="sidebarArea d-none d-md-block sidebar"> -->
<%-- 				<jsp:include page="/WEB-INF/views/inc/member_sidebar.jsp"></jsp:include> --%>
<!-- 			</nav> -->
			<div class="contentArea">
			<%-- 메인영역 --%>
							<%-- 메인영역 --%>
				<div class="help">
					<div class="content lg">
						<div class="help_area">
							<div>
								<h2 class="help_title">이메일 아이디 찾기</h2>
								<div class="help_notice">
									<p class="notice_txt"> 가입 시 등록한 휴대폰 번호를 입력하면<br> 
									이메일 주소의 일부를 알려드립니다. </p>
								</div>
								<div class="input_box">
									<h3 class="input_title">휴대폰 번호</h3>
									<div class="input_item">
										<input type="tel" placeholder="가입하신 휴대폰 번호" autocomplete="off" class="input_txt">
									</div>
								</div>
								<div class="help_btn_box">
									<a disabled="disabled" href="#" class="btn full solid disabled"> 이메일 아이디 찾기 </a>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
			</div>
			
		</div>
	</article>
	
	<footer>
	</footer>
</body>
</html>