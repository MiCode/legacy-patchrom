.class interface abstract Lcom/android/internal/widget/ContactHeaderWidget$PhotoQuery;
.super Ljava/lang/Object;
.source "ContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ContactHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PhotoQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final PHOTO:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/ContactHeaderWidget$PhotoQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
