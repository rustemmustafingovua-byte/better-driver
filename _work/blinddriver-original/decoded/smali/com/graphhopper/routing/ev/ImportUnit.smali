.class public Lcom/graphhopper/routing/ev/ImportUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final createEncodedValue:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/graphhopper/util/PMap;",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">;"
        }
    .end annotation
.end field

.field private final createTagParser:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Lcom/graphhopper/util/PMap;",
            "Lcom/graphhopper/routing/util/parsers/TagParser;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final requiredImportUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiFunction;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/graphhopper/util/PMap;",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">;",
            "Ljava/util/function/BiFunction<",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Lcom/graphhopper/util/PMap;",
            "Lcom/graphhopper/routing/util/parsers/TagParser;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/ev/ImportUnit;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/graphhopper/routing/ev/ImportUnit;->createEncodedValue:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/graphhopper/routing/ev/ImportUnit;->createTagParser:Ljava/util/function/BiFunction;

    iput-object p4, p0, Lcom/graphhopper/routing/ev/ImportUnit;->requiredImportUnits:Ljava/util/List;

    return-void
.end method

.method public static varargs create(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiFunction;[Ljava/lang/String;)Lcom/graphhopper/routing/ev/ImportUnit;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/graphhopper/util/PMap;",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">;",
            "Ljava/util/function/BiFunction<",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Lcom/graphhopper/util/PMap;",
            "Lcom/graphhopper/routing/util/parsers/TagParser;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/graphhopper/routing/ev/ImportUnit;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/ImportUnit;

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p3, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/graphhopper/routing/ev/ImportUnit;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiFunction;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getCreateEncodedValue()Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Lcom/graphhopper/util/PMap;",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/ev/ImportUnit;->createEncodedValue:Ljava/util/function/Function;

    return-object p0
.end method

.method public getCreateTagParser()Ljava/util/function/BiFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Lcom/graphhopper/util/PMap;",
            "Lcom/graphhopper/routing/util/parsers/TagParser;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/ev/ImportUnit;->createTagParser:Ljava/util/function/BiFunction;

    return-object p0
.end method

.method public getRequiredImportUnits()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/ev/ImportUnit;->requiredImportUnits:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/ev/ImportUnit;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/graphhopper/routing/ev/ImportUnit;->requiredImportUnits:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " (requires: "

    const-string v2, ")"

    const-string v3, "ImportUnit: "

    invoke-static {v3, v0, v1, p0, v2}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
