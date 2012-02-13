.class final Lcom/android/server/InputManager$VirtualKeyDefinition;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VirtualKeyDefinition"
.end annotation


# instance fields
.field public centerX:I

.field public centerY:I

.field public height:I

.field public scanCode:I

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/InputManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/InputManager$VirtualKeyDefinition;-><init>()V

    return-void
.end method
