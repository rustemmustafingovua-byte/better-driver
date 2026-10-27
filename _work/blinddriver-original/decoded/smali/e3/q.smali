.class public final Le3/q;
.super Lf1/q;
.source "SourceFile"


# instance fields
.field public final A:Landroidx/fragment/app/t;

.field public z:Le3/e;


# direct methods
.method public constructor <init>(Le3/e;)V
    .locals 1

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p1, p0, Le3/q;->z:Le3/e;

    new-instance p1, Landroidx/fragment/app/t;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Le3/q;->A:Landroidx/fragment/app/t;

    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 1

    iget-object v0, p0, Le3/q;->z:Le3/e;

    iget-object p0, p0, Le3/q;->A:Landroidx/fragment/app/t;

    invoke-virtual {v0, p0}, Le3/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final F0()V
    .locals 1

    iget-object p0, p0, Le3/q;->z:Le3/e;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le3/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
