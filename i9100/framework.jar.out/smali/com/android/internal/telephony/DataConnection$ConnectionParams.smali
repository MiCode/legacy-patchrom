.class public Lcom/android/internal/telephony/DataConnection$ConnectionParams;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConnectionParams"
.end annotation


# instance fields
.field public apn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field public onCompletedMsg:Landroid/os/Message;

.field public tag:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/ApnSetting;Landroid/os/Message;)V
    .locals 0
    .parameter "apn"
    .parameter "onCompletedMsg"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 133
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    .line 134
    return-void
.end method
