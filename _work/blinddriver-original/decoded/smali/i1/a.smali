.class public final Li1/a;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li1/b;


# direct methods
.method public constructor <init>(Li1/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/a;->a:Li1/b;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 0

    iget-object p0, p0, Li1/a;->a:Li1/b;

    iget-object p0, p0, Li1/b;->a:Li1/f;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic f(Lf1/q;)V
    .locals 0

    check-cast p1, Li1/f;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Li1/a;->a:Li1/b;

    iget-object p0, p0, Li1/b;->a:Li1/f;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
