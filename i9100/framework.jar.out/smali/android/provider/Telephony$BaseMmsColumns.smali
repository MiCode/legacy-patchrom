.class public interface abstract Landroid/provider/Telephony$BaseMmsColumns;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseMmsColumns"
.end annotation


# static fields
.field public static final ADAPTATION_ALLOWED:Ljava/lang/String; = "adp_a"

.field public static final APPLIC_ID:Ljava/lang/String; = "apl_id"

.field public static final AUX_APPLIC_ID:Ljava/lang/String; = "aux_apl_id"

.field public static final BCC:Ljava/lang/String; = "bcc"

.field public static final CANCEL_ID:Ljava/lang/String; = "cl_id"

.field public static final CANCEL_STATUS:Ljava/lang/String; = "cl_st"

.field public static final CC:Ljava/lang/String; = "cc"

.field public static final CONTENT_CLASS:Ljava/lang/String; = "ct_cls"

.field public static final CONTENT_LOCATION:Ljava/lang/String; = "ct_l"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "ct_t"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DELIVERY_REPORT:Ljava/lang/String; = "d_rpt"

.field public static final DELIVERY_TIME:Ljava/lang/String; = "d_tm"

.field public static final DELIVERY_TIME_TOKEN:Ljava/lang/String; = "d_tm_tok"

.field public static final DISTRIBUTION_INDICATOR:Ljava/lang/String; = "d_ind"

.field public static final DRM_CONTENT:Ljava/lang/String; = "drm_c"

.field public static final ELEMENT_DESCRIPTOR:Ljava/lang/String; = "e_des"

.field public static final EXPIRY:Ljava/lang/String; = "exp"

.field public static final FROM:Ljava/lang/String; = "from"

.field public static final LIMIT:Ljava/lang/String; = "limit"

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field public static final MBOX_QUOTAS:Ljava/lang/String; = "mb_qt"

.field public static final MBOX_QUOTAS_TOKEN:Ljava/lang/String; = "mb_qt_tok"

.field public static final MBOX_TOTALS:Ljava/lang/String; = "mb_t"

.field public static final MBOX_TOTALS_TOKEN:Ljava/lang/String; = "mb_t_tok"

.field public static final MESSAGE_BOX:Ljava/lang/String; = "msg_box"

.field public static final MESSAGE_BOX_ALL:I = 0x0

.field public static final MESSAGE_BOX_DRAFTS:I = 0x3

.field public static final MESSAGE_BOX_INBOX:I = 0x1

.field public static final MESSAGE_BOX_OUTBOX:I = 0x4

.field public static final MESSAGE_BOX_SENT:I = 0x2

.field public static final MESSAGE_CLASS:Ljava/lang/String; = "m_cls"

.field public static final MESSAGE_COUNT:Ljava/lang/String; = "m_cnt"

.field public static final MESSAGE_ID:Ljava/lang/String; = "m_id"

.field public static final MESSAGE_SIZE:Ljava/lang/String; = "m_size"

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "m_type"

.field public static final META_DATA:Ljava/lang/String; = "meta_data"

.field public static final MMS_VERSION:Ljava/lang/String; = "v"

.field public static final MM_FLAGS:Ljava/lang/String; = "mm_flg"

.field public static final MM_FLAGS_TOKEN:Ljava/lang/String; = "mm_flg_tok"

.field public static final MM_STATE:Ljava/lang/String; = "mm_st"

.field public static final PREVIOUSLY_SENT_BY:Ljava/lang/String; = "p_s_by"

.field public static final PREVIOUSLY_SENT_DATE:Ljava/lang/String; = "p_s_d"

.field public static final PRIORITY:Ljava/lang/String; = "pri"

.field public static final QUOTAS:Ljava/lang/String; = "qt"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final READ_REPORT:Ljava/lang/String; = "rr"

.field public static final READ_STATUS:Ljava/lang/String; = "read_status"

.field public static final RECOMMENDED_RETRIEVAL_MODE:Ljava/lang/String; = "r_r_mod"

.field public static final RECOMMENDED_RETRIEVAL_MODE_TEXT:Ljava/lang/String; = "r_r_mod_txt"

.field public static final REPLACE_ID:Ljava/lang/String; = "repl_id"

.field public static final REPLY_APPLIC_ID:Ljava/lang/String; = "r_apl_id"

.field public static final REPLY_CHARGING:Ljava/lang/String; = "r_chg"

.field public static final REPLY_CHARGING_DEADLINE:Ljava/lang/String; = "r_chg_dl"

.field public static final REPLY_CHARGING_DEADLINE_TOKEN:Ljava/lang/String; = "r_chg_dl_tok"

.field public static final REPLY_CHARGING_ID:Ljava/lang/String; = "r_chg_id"

.field public static final REPLY_CHARGING_SIZE:Ljava/lang/String; = "r_chg_sz"

.field public static final REPORT_ALLOWED:Ljava/lang/String; = "rpt_a"

.field public static final RESPONSE_STATUS:Ljava/lang/String; = "resp_st"

.field public static final RESPONSE_TEXT:Ljava/lang/String; = "resp_txt"

.field public static final RETRIEVE_STATUS:Ljava/lang/String; = "retr_st"

.field public static final RETRIEVE_TEXT:Ljava/lang/String; = "retr_txt"

.field public static final RETRIEVE_TEXT_CHARSET:Ljava/lang/String; = "retr_txt_cs"

.field public static final SEEN:Ljava/lang/String; = "seen"

.field public static final SENDER_VISIBILITY:Ljava/lang/String; = "s_vis"

.field public static final START:Ljava/lang/String; = "start"

.field public static final STATUS:Ljava/lang/String; = "st"

.field public static final STATUS_TEXT:Ljava/lang/String; = "st_txt"

.field public static final STORE:Ljava/lang/String; = "store"

.field public static final STORED:Ljava/lang/String; = "stored"

.field public static final STORE_STATUS:Ljava/lang/String; = "store_st"

.field public static final STORE_STATUS_TEXT:Ljava/lang/String; = "store_st_txt"

.field public static final SUBJECT:Ljava/lang/String; = "sub"

.field public static final SUBJECT_CHARSET:Ljava/lang/String; = "sub_cs"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final TO:Ljava/lang/String; = "to"

.field public static final TOTALS:Ljava/lang/String; = "totals"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "tr_id"
