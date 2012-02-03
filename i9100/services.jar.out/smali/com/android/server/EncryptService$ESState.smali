.class public Lcom/android/server/EncryptService$ESState;
.super Ljava/lang/Object;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ESState"
.end annotation


# static fields
.field public static final BOOTING:Ljava/lang/String; = "booting"

.field public static final DONE:Ljava/lang/String; = "done"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final OVERPASS:Ljava/lang/String; = "overpass"

.field public static final STORAGE_COMPLETE:Ljava/lang/String; = "COMPLETE"

.field public static final STORAGE_DecryptBATCH:Ljava/lang/String; = "DecryptBATCH"

.field public static final STORAGE_EncryptBATCH:Ljava/lang/String; = "EncryptBATCH"

.field public static final STORAGE_INVALID:Ljava/lang/String; = "INVALID"

.field public static final STORAGE_NULL:Ljava/lang/String; = "NULL"

.field public static final WORKING:Ljava/lang/String; = "working"


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method protected constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/android/server/EncryptService$ESState;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
