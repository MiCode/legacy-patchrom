.class public Lcom/android/server/EncryptService$CryptoPolicy;
.super Ljava/lang/Object;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CryptoPolicy"
.end annotation


# static fields
.field public static final DISABLE:I = 0x0

.field public static final ENABLE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method protected constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/android/server/EncryptService$CryptoPolicy;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
