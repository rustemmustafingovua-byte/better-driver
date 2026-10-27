.class public final synthetic Lcom/graphhopper/routing/util/parsers/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/c;


# instance fields
.field public final synthetic l:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

.field public final synthetic m:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field public final synthetic n:I

.field public final synthetic o:Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/graphhopper/routing/ev/BooleanEncodedValue;ILcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/d;->l:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/d;->m:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iput p3, p0, Lcom/graphhopper/routing/util/parsers/d;->n:I

    iput-object p4, p0, Lcom/graphhopper/routing/util/parsers/d;->o:Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    return-void
.end method


# virtual methods
.method public final apply(I)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/routing/util/parsers/d;->n:I

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/d;->o:Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/d;->l:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/d;->m:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-static {v2, p0, v0, v1, p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->d(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/graphhopper/routing/ev/BooleanEncodedValue;ILcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;I)V

    return-void
.end method
