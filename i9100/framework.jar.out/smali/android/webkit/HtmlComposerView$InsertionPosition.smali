.class public final enum Landroid/webkit/HtmlComposerView$InsertionPosition;
.super Ljava/lang/Enum;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InsertionPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/HtmlComposerView$InsertionPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/HtmlComposerView$InsertionPosition;

.field public static final enum INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

.field public static final enum INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

.field public static final enum INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 568
    new-instance v0, Landroid/webkit/HtmlComposerView$InsertionPosition;

    const-string v1, "INSERT_AT_BEGINING"

    invoke-direct {v0, v1, v2}, Landroid/webkit/HtmlComposerView$InsertionPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    .line 569
    new-instance v0, Landroid/webkit/HtmlComposerView$InsertionPosition;

    const-string v1, "INSERT_AT_CURSOR"

    invoke-direct {v0, v1, v3}, Landroid/webkit/HtmlComposerView$InsertionPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    .line 570
    new-instance v0, Landroid/webkit/HtmlComposerView$InsertionPosition;

    const-string v1, "INSERT_AT_END"

    invoke-direct {v0, v1, v4}, Landroid/webkit/HtmlComposerView$InsertionPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    .line 567
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/webkit/HtmlComposerView$InsertionPosition;

    sget-object v1, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    aput-object v1, v0, v4

    sput-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->$VALUES:[Landroid/webkit/HtmlComposerView$InsertionPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 567
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/HtmlComposerView$InsertionPosition;
    .locals 1
    .parameter "name"

    .prologue
    .line 567
    const-class v0, Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/HtmlComposerView$InsertionPosition;

    return-object p0
.end method

.method public static values()[Landroid/webkit/HtmlComposerView$InsertionPosition;
    .locals 1

    .prologue
    .line 567
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->$VALUES:[Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v0}, [Landroid/webkit/HtmlComposerView$InsertionPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/HtmlComposerView$InsertionPosition;

    return-object v0
.end method
