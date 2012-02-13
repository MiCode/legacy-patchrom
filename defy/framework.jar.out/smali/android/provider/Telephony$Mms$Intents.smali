.class public final Landroid/provider/Telephony$Mms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_GET_RMT:Ljava/lang/String; = "com.android.mms.action.GET_RMT"

.field public static final ACTION_SET_RMT:Ljava/lang/String; = "com.android.mms.action.SET_RMT"

.field public static final CONTENT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.CONTENT_CHANGED"

.field public static final DELETED_CONTENTS:Ljava/lang/String; = "deleted_contents"

.field public static final DELETED_MMS_LIST:Ljava/lang/String; = "deleted_mms_list"

.field public static final EXTRA_BCC:Ljava/lang/String; = "bcc"

.field public static final EXTRA_CC:Ljava/lang/String; = "cc"

.field public static final EXTRA_CONTENTS:Ljava/lang/String; = "contents"

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "subject"

.field public static final EXTRA_TYPES:Ljava/lang/String; = "types"

.field public static final INSERTED_MMS_LIST:Ljava/lang/String; = "inserted_mms_list"

.field public static final MMS_DELETED_ACTION:Ljava/lang/String; = "com.motorola.android.intent.action.MMS_DELETED"

.field public static final MMS_INSERTED_ACTION:Ljava/lang/String; = "com.motorola.android.intent.action.MMS_INSERTED"

.field public static final MMS_UPDATED_ACTION:Ljava/lang/String; = "com.motorola.android.intent.action.MMS_UPDATED"

.field public static final OLD_MESSAGE_BOX:Ljava/lang/String; = "old_msg_box"

.field public static final UPDATED_MMS_LIST:Ljava/lang/String; = "updated_mms_list"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
