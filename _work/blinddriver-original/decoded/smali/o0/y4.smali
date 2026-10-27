.class public final synthetic Lo0/y4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/q;
.implements Lj9/j;


# instance fields
.field public final synthetic a:Lo0/c2;


# direct methods
.method public constructor <init>(Lo0/c2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/y4;->a:Lo0/c2;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Lo0/y4;->a:Lo0/c2;

    invoke-virtual {p0}, Lo0/c2;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm1/p;

    iget-wide v0, p0, Lm1/p;->a:J

    return-wide v0
.end method

.method public final b()Lt8/e;
    .locals 0

    iget-object p0, p0, Lo0/y4;->a:Lo0/c2;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lm1/q;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lj9/j;

    if-eqz v0, :cond_0

    check-cast p1, Lj9/j;

    invoke-interface {p1}, Lj9/j;->b()Lt8/e;

    move-result-object p1

    iget-object p0, p0, Lo0/y4;->a:Lo0/c2;

    invoke-virtual {p0, p1}, Lj9/t;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lo0/y4;->a:Lo0/c2;

    invoke-virtual {p0}, Lj9/t;->hashCode()I

    move-result p0

    return p0
.end method
