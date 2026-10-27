.class public final Lu9/k0;
.super Lu9/l0;
.source "SourceFile"


# instance fields
.field public final n:Lu9/q1;


# direct methods
.method public constructor <init>(JLu9/q1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lu9/l0;-><init>(J)V

    iput-object p3, p0, Lu9/k0;->n:Lu9/q1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lu9/k0;->n:Lu9/q1;

    invoke-virtual {p0}, Lu9/q1;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lu9/l0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu9/k0;->n:Lu9/q1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
