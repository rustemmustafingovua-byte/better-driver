.class public abstract Lpb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lpb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lpb/a;

    sput-object v0, Lpb/b;->a:[Lpb/a;

    return-void
.end method

.method public static a(DD)I
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    cmpl-double v3, p2, v0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot compute the quadrant for point ( "

    const-string v2, ", "

    invoke-static {p0, p1, v1, v2}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " )"

    invoke-static {p0, p2, p3, p1}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-ltz v2, :cond_3

    cmpl-double p0, p2, v0

    if-ltz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    cmpl-double p0, p2, v0

    if-ltz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method public static b(Lpb/a;Lpb/a;)I
    .locals 8

    iget-wide v0, p1, Lpb/a;->l:D

    iget-wide v2, p0, Lpb/a;->l:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v4, p1, Lpb/a;->m:D

    iget-wide v6, p0, Lpb/a;->m:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot compute the quadrant for two identical points "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p1, Lpb/a;->m:D

    iget-wide p0, p0, Lpb/a;->m:D

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    iget-wide v0, p1, Lpb/a;->m:D

    iget-wide p0, p0, Lpb/a;->m:D

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method public static c(I)C
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0x65

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown location value: "

    invoke-static {p0, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x62

    return p0

    :cond_2
    const/16 p0, 0x69

    return p0

    :cond_3
    const/16 p0, 0x2d

    return p0
.end method
