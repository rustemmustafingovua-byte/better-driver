.class public final synthetic Lm0/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/r;
.implements Lj9/j;


# instance fields
.field public final synthetic a:Li9/a;


# direct methods
.method public constructor <init>(Li9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/k0;->a:Li9/a;

    return-void
.end method


# virtual methods
.method public final synthetic a()J
    .locals 2

    iget-object p0, p0, Lm0/k0;->a:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/b;

    iget-wide v0, p0, Ll1/b;->a:J

    return-wide v0
.end method

.method public final b()Lt8/e;
    .locals 0

    iget-object p0, p0, Lm0/k0;->a:Li9/a;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lm0/r;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lj9/j;

    if-eqz v0, :cond_0

    check-cast p1, Lj9/j;

    invoke-interface {p1}, Lj9/j;->b()Lt8/e;

    move-result-object p1

    iget-object p0, p0, Lm0/k0;->a:Li9/a;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lm0/k0;->a:Li9/a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
