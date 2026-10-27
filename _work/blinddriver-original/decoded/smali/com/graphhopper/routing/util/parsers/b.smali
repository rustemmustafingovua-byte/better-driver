.class public final synthetic Lcom/graphhopper/routing/util/parsers/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/c;


# instance fields
.field public final synthetic l:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

.field public final synthetic m:Lcom/carrotsearch/hppc/r0;

.field public final synthetic n:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field public final synthetic o:Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/carrotsearch/hppc/r0;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/b;->l:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/b;->m:Lcom/carrotsearch/hppc/r0;

    iput-object p3, p0, Lcom/graphhopper/routing/util/parsers/b;->n:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iput-object p4, p0, Lcom/graphhopper/routing/util/parsers/b;->o:Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    return-void
.end method


# virtual methods
.method public final apply(I)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/b;->n:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/b;->o:Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/b;->l:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/b;->m:Lcom/carrotsearch/hppc/r0;

    invoke-static {v2, p0, v0, v1, p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->c(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/carrotsearch/hppc/r0;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;I)V

    return-void
.end method
