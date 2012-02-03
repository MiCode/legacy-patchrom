.class Landroid/smartcard/SmartcardClient$1;
.super Landroid/smartcard/ISmartcardServiceCallback$Stub;
.source "SmartcardClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/smartcard/SmartcardClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/smartcard/SmartcardClient;


# direct methods
.method constructor <init>(Landroid/smartcard/SmartcardClient;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Landroid/smartcard/SmartcardClient$1;->this$0:Landroid/smartcard/SmartcardClient;

    invoke-direct {p0}, Landroid/smartcard/ISmartcardServiceCallback$Stub;-><init>()V

    return-void
.end method
