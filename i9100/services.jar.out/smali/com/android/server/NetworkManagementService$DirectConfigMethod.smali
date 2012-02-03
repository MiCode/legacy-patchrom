.class Lcom/android/server/NetworkManagementService$DirectConfigMethod;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirectConfigMethod"
.end annotation


# static fields
.field public static final Button:Ljava/lang/String; = "Pushbutton"

.field public static final Display:Ljava/lang/String; = "Display"

.field public static final Keypad:Ljava/lang/String; = "Keypad"


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$DirectConfigMethod;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
