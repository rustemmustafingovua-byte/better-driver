.class public final Lmb/i3;
.super Lmb/e5;
.source "SourceFile"


# instance fields
.field public final e:[Lmb/x3;

.field public final f:Lmb/s5;

.field public final g:[Lmb/z5;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/i3;->e:[Lmb/x3;

    iput-object p3, p0, Lmb/i3;->f:Lmb/s5;

    iput-object p4, p0, Lmb/i3;->g:[Lmb/z5;

    invoke-virtual {p3, p0}, Lmb/s5;->a(Lmb/a5;)V

    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object p3, p4, p2

    iget-object p3, p3, Lmb/z5;->e:Lmb/x0;

    if-eqz p3, :cond_0

    invoke-interface {p3, p0}, Lmb/x0;->a(Lmb/a5;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/i3;->e:[Lmb/x3;

    invoke-static {v1}, La/a;->c([Lmb/x3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmb/i3;->f:Lmb/s5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object p0, p0, Lmb/i3;->g:[Lmb/z5;

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lmb/z5;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->E(Lmb/i3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
