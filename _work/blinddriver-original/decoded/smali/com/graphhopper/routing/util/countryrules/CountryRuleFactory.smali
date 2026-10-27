.class public Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/graphhopper/routing/ev/Country;",
            "Lcom/graphhopper/routing/util/countryrules/CountryRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/graphhopper/routing/ev/Country;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;->rules:Ljava/util/Map;

    sget-object p0, Lcom/graphhopper/routing/ev/Country;->AUT:Lcom/graphhopper/routing/ev/Country;

    new-instance v1, Lcom/graphhopper/routing/util/countryrules/europe/AustriaCountryRule;

    invoke-direct {v1}, Lcom/graphhopper/routing/util/countryrules/europe/AustriaCountryRule;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/graphhopper/routing/ev/Country;->DEU:Lcom/graphhopper/routing/ev/Country;

    new-instance v1, Lcom/graphhopper/routing/util/countryrules/europe/GermanyCountryRule;

    invoke-direct {v1}, Lcom/graphhopper/routing/util/countryrules/europe/GermanyCountryRule;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/graphhopper/routing/ev/Country;->HUN:Lcom/graphhopper/routing/ev/Country;

    new-instance v1, Lcom/graphhopper/routing/util/countryrules/europe/HungaryCountryRule;

    invoke-direct {v1}, Lcom/graphhopper/routing/util/countryrules/europe/HungaryCountryRule;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCountryRule(Lcom/graphhopper/routing/ev/Country;)Lcom/graphhopper/routing/util/countryrules/CountryRule;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;->rules:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/util/countryrules/CountryRule;

    return-object p0
.end method

.method public getCountryToRuleMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/graphhopper/routing/ev/Country;",
            "Lcom/graphhopper/routing/util/countryrules/CountryRule;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;->rules:Ljava/util/Map;

    return-object p0
.end method
