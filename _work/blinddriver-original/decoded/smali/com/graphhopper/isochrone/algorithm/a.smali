.class public final synthetic Lcom/graphhopper/isochrone/algorithm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntBiFunction;


# instance fields
.field public final synthetic a:D


# direct methods
.method public synthetic constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/graphhopper/isochrone/algorithm/a;->a:D

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lic/c;

    check-cast p2, Lic/c;

    iget-wide v0, p0, Lcom/graphhopper/isochrone/algorithm/a;->a:D

    invoke-static {v0, v1, p1, p2}, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->a(DLic/c;Lic/c;)I

    move-result p0

    return p0
.end method
