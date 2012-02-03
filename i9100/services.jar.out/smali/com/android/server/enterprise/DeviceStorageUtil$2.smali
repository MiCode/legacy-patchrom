.class Lcom/android/server/enterprise/DeviceStorageUtil$2;
.super Ljava/lang/Thread;
.source "DeviceStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/DeviceStorageUtil;->formatStorageCard(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

.field final synthetic val$sdcardFmtr:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/DeviceStorageUtil;Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceStorageUtil$2;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    iput-object p2, p0, Lcom/android/server/enterprise/DeviceStorageUtil$2;->val$sdcardFmtr:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$2;->val$sdcardFmtr:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;

    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->formatSdCard()V

    .line 285
    return-void
.end method
