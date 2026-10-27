.class public final synthetic Lf2/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/y1;
.implements Lj9/j;


# instance fields
.field public final synthetic a:Lr0/u;


# direct methods
.method public constructor <init>(Lr0/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/h3;->a:Lr0/u;

    return-void
.end method


# virtual methods
.method public final b()Lt8/e;
    .locals 8

    new-instance v0, Lj9/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lf2/h3;->a:Lr0/u;

    const-class v3, Lr0/u;

    const-string v4, "scheduleFrameEndCallback"

    const-string v5, "scheduleFrameEndCallback(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/CancellationHandle;"

    invoke-direct/range {v0 .. v7}, Lj9/l;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lf2/y1;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lj9/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf2/h3;->b()Lt8/e;

    move-result-object p0

    check-cast p1, Lj9/j;

    invoke-interface {p1}, Lj9/j;->b()Lt8/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lf2/h3;->b()Lt8/e;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
