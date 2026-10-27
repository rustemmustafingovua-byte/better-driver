.class public final synthetic Lcom/graphhopper/routing/util/parsers/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/a;->a:Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/graphhopper/routing/util/parsers/a;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/a;->c:Ljava/util/Map;

    check-cast p1, Ljava/util/Map;

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/a;->a:Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/a;->b:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->a(Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;

    move-result-object p0

    return-object p0
.end method
