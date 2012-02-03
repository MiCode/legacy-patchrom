.class Lcom/android/server/EncryptService$EncryptResponseCode;
.super Ljava/lang/Object;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EncryptResponseCode"
.end annotation


# static fields
.field public static final BatchCryptStatus:I = 0x2b2

.field public static final EncryptBatchDone:I = 0x2b6

.field public static final EncryptDataDone:I = 0x2b9

.field public static final EncryptDataFail:I = 0x2ba

.field public static final EncryptFormatDone:I = 0x2b7

.field public static final EncryptMountDone:I = 0x2b5

.field public static final EncryptResultFail:I = 0x2b8

.field public static final EncryptShareDone:I = 0x2b4

.field public static final UserPopupRequest:I = 0x2b3


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/server/EncryptService$EncryptResponseCode;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
