.class public Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;
.super Ljava/lang/Object;
.source "StkCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallSettings"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field public confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->this$0:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
