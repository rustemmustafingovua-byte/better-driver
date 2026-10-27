.class public final Lla/y;
.super Lla/a0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lla/t;

.field public final synthetic c:I

.field public final synthetic d:[B


# direct methods
.method public constructor <init>(Lla/t;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/y;->b:Lla/t;

    iput p2, p0, Lla/y;->c:I

    iput-object p3, p0, Lla/y;->d:[B

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget p0, p0, Lla/y;->c:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final b()Lla/t;
    .locals 0

    iget-object p0, p0, Lla/y;->b:Lla/t;

    return-object p0
.end method

.method public final c(Lbb/o;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lla/y;->c:I

    iget-object p0, p0, Lla/y;->d:[B

    invoke-virtual {p1, p0, v0, v1}, Lbb/o;->write([BII)Lbb/h;

    return-void
.end method
