.class public Lcom/android/server/EncryptService$CommandMode;
.super Ljava/lang/Object;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CommandMode"
.end annotation


# static fields
.field public static final BATCH:I = 0x1

.field public static final ERROR:I = -0x7

.field public static final FORMAT:I = 0x3

.field public static final INVALID:I = -0x6

.field public static final MOUNT:I = 0x2

.field public static final NONE:I = 0x0

.field public static final OVERPASS:I = -0x64


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method protected constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/server/EncryptService$CommandMode;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
