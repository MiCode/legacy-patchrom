.class Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
.super Ljava/lang/Object;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkSelectMessage"
.end annotation


# instance fields
.field public message:Landroid/os/Message;

.field public operatorAlphaLong:Ljava/lang/String;

.field public operatorNumeric:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>()V

    return-void
.end method
