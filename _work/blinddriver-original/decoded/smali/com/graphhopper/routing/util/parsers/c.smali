.class public final synthetic Lcom/graphhopper/routing/util/parsers/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/c;


# instance fields
.field public final synthetic l:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

.field public final synthetic m:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/graphhopper/routing/ev/BooleanEncodedValue;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/c;->l:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/c;->m:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iput p3, p0, Lcom/graphhopper/routing/util/parsers/c;->n:I

    iput p4, p0, Lcom/graphhopper/routing/util/parsers/c;->o:I

    return-void
.end method


# virtual methods
.method public final apply(I)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/routing/util/parsers/c;->n:I

    iget v1, p0, Lcom/graphhopper/routing/util/parsers/c;->o:I

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/c;->l:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/c;->m:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-static {v2, p0, v0, v1, p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->g(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V

    return-void
.end method
