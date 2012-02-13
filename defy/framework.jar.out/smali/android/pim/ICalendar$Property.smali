.class public Landroid/pim/ICalendar$Property;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/ICalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# static fields
.field public static final DTEND:Ljava/lang/String; = "DTEND"

.field public static final DTSTART:Ljava/lang/String; = "DTSTART"

.field public static final DURATION:Ljava/lang/String; = "DURATION"

.field public static final EXDATE:Ljava/lang/String; = "EXDATE"

.field public static final EXRULE:Ljava/lang/String; = "EXRULE"

.field public static final RDATE:Ljava/lang/String; = "RDATE"

.field public static final RRULE:Ljava/lang/String; = "RRULE"


# instance fields
.field private final mName:Ljava/lang/String;

.field private mParamsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/pim/ICalendar$Parameter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/pim/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Landroid/pim/ICalendar$Property;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/pim/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Landroid/pim/ICalendar$Property;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/pim/ICalendar$Property;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addParameter(Landroid/pim/ICalendar$Parameter;)V
    .locals 3
    .parameter "param"

    .prologue
    iget-object v1, p0, Landroid/pim/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Landroid/pim/ICalendar$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/pim/ICalendar$Parameter;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/pim/ICalendar$Parameter;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/pim/ICalendar$Parameter;>;"
    iget-object v1, p0, Landroid/pim/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Landroid/pim/ICalendar$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFirstParameter(Ljava/lang/String;)Landroid/pim/ICalendar$Parameter;
    .locals 2
    .parameter "name"

    .prologue
    iget-object v1, p0, Landroid/pim/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/pim/ICalendar$Parameter;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/pim/ICalendar$Parameter;

    move-object v1, p0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/pim/ICalendar$Property;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/pim/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/pim/ICalendar$Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/pim/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/pim/ICalendar$Property;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    iput-object p1, p0, Landroid/pim/ICalendar$Property;->mValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/pim/ICalendar$Property;->toString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "sb"

    .prologue
    iget-object v5, p0, Landroid/pim/ICalendar$Property;->mName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/pim/ICalendar$Property;->getParameterNames()Ljava/util/Set;

    move-result-object v4

    .local v4, parameterNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, parameterName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/pim/ICalendar$Property;->getParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/pim/ICalendar$Parameter;

    .local v2, param:Landroid/pim/ICalendar$Parameter;
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Landroid/pim/ICalendar$Parameter;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #param:Landroid/pim/ICalendar$Parameter;
    .end local v3           #parameterName:Ljava/lang/String;
    :cond_1
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/pim/ICalendar$Property;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
