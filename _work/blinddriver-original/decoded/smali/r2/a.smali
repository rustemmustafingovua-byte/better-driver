.class public final Lr2/a;
.super Landroid/text/SegmentFinder;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg5/s;


# direct methods
.method public constructor <init>(Lg5/s;)V
    .locals 0

    iput-object p1, p0, Lr2/a;->a:Lg5/s;

    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    return-void
.end method


# virtual methods
.method public final nextEndBoundary(I)I
    .locals 0

    iget-object p0, p0, Lr2/a;->a:Lg5/s;

    invoke-virtual {p0, p1}, Lg5/s;->n(I)I

    move-result p0

    return p0
.end method

.method public final nextStartBoundary(I)I
    .locals 0

    iget-object p0, p0, Lr2/a;->a:Lg5/s;

    invoke-virtual {p0, p1}, Lg5/s;->f(I)I

    move-result p0

    return p0
.end method

.method public final previousEndBoundary(I)I
    .locals 0

    iget-object p0, p0, Lr2/a;->a:Lg5/s;

    invoke-virtual {p0, p1}, Lg5/s;->j(I)I

    move-result p0

    return p0
.end method

.method public final previousStartBoundary(I)I
    .locals 0

    iget-object p0, p0, Lr2/a;->a:Lg5/s;

    invoke-virtual {p0, p1}, Lg5/s;->m(I)I

    move-result p0

    return p0
.end method
