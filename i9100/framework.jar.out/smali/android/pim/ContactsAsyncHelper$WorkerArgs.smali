.class final Landroid/pim/ContactsAsyncHelper$WorkerArgs;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerArgs"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public cookie:Ljava/lang/Object;

.field public defaultResource:I

.field public info:Lcom/android/internal/telephony/CallerInfo;

.field public listener:Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;

.field public result:Ljava/lang/Object;

.field public uri:Landroid/net/Uri;

.field public view:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/pim/ContactsAsyncHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/pim/ContactsAsyncHelper$WorkerArgs;-><init>()V

    return-void
.end method
