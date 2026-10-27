.class public final Lu9/j0;
.super Lu9/l0;
.source "SourceFile"


# instance fields
.field public final n:Lu9/g;

.field public final synthetic o:Lu9/n0;


# direct methods
.method public constructor <init>(Lu9/n0;JLu9/g;)V
    .locals 0

    iput-object p1, p0, Lu9/j0;->o:Lu9/n0;

    invoke-direct {p0, p2, p3}, Lu9/l0;-><init>(J)V

    iput-object p4, p0, Lu9/j0;->n:Lu9/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lu9/j0;->o:Lu9/n0;

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object p0, p0, Lu9/j0;->n:Lu9/g;

    invoke-virtual {p0, v0, v1}, Lu9/g;->C(Lu9/p;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lu9/l0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu9/j0;->n:Lu9/g;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
