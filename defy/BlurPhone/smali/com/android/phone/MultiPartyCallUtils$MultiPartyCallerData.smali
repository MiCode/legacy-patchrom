.class public Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;
.super Ljava/lang/Object;
.source "MultiPartyCallUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MultiPartyCallUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiPartyCallerData"
.end annotation


# instance fields
.field mConn:Lcom/android/internal/telephony/Connection;

.field mIsConnected:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/android/phone/MultiPartyCallUtils;


# direct methods
.method public constructor <init>(Lcom/android/phone/MultiPartyCallUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->this$0:Lcom/android/phone/MultiPartyCallUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
