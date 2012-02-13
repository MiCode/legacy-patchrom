.class Lcom/android/server/MountService$VolumeState;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VolumeState"
.end annotation


# static fields
.field public static final Checking:I = 0x3

.field public static final Formatting:I = 0x6

.field public static final Idle:I = 0x1

.field public static final Init:I = -0x1

.field public static final Mounted:I = 0x4

.field public static final NoMedia:I = 0x0

.field public static final Pending:I = 0x2

.field public static final Shared:I = 0x7

.field public static final SharedMnt:I = 0x8

.field public static final Unmounting:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$VolumeState;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
