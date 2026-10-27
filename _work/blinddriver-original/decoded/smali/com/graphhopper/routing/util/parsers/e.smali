.class public final synthetic Lcom/graphhopper/routing/util/parsers/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/c;


# instance fields
.field public final synthetic l:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/e;->l:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    iput p2, p0, Lcom/graphhopper/routing/util/parsers/e;->m:I

    iput p3, p0, Lcom/graphhopper/routing/util/parsers/e;->n:I

    iput p4, p0, Lcom/graphhopper/routing/util/parsers/e;->o:I

    return-void
.end method


# virtual methods
.method public final apply(I)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/routing/util/parsers/e;->n:I

    iget v1, p0, Lcom/graphhopper/routing/util/parsers/e;->o:I

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/e;->l:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    iget p0, p0, Lcom/graphhopper/routing/util/parsers/e;->m:I

    invoke-static {v2, p0, v0, v1, p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->a(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;IIII)V

    return-void
.end method
