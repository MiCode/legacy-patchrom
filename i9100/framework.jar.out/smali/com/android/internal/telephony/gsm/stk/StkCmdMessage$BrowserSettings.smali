.class public Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;
.super Ljava/lang/Object;
.source "StkCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrowserSettings"
.end annotation


# instance fields
.field public mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->this$0:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
