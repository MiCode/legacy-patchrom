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
.field public static final CONTENT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.CONTENT_CHANGED"

.field public static final DELETED_CONTENTS:Ljava/lang/String; = "deleted_contents"

.field public static final EXTRA_BCC:Ljava/lang/String; = "bcc"

.field public static final EXTRA_CC:Ljava/lang/String; = "cc"

.field public static final EXTRA_CONTENTS:Ljava/lang/String; = "contents"

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "subject"

.field public static final EXTRA_TYPES:Ljava/lang/String; = "types"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1822
    return-void
.end method
