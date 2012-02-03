.class public Lcom/android/server/EncryptService$Policy;
.super Ljava/lang/Object;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Policy"
.end annotation


# static fields
.field public static final EXTERNAL:Ljava/lang/String; = "external"

.field public static final INTERNAL:Ljava/lang/String; = "internal"


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method protected constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/android/server/EncryptService$Policy;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
