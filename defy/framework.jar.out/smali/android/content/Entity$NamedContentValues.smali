.class public Landroid/content/Entity$NamedContentValues;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedContentValues"
.end annotation


# instance fields
.field public final uri:Landroid/net/Uri;

.field public final values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "uri"
    .parameter "values"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    return-void
.end method
