.class public final Lmb/g2;
.super Lmb/m3;
.source "SourceFile"

# interfaces
.implements Lmb/a4;


# instance fields
.field public final synthetic c:I

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lhb/c;[Ljava/lang/String;[[Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lmb/g2;->c:I

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/g2;->d:[Ljava/lang/String;

    iput-object p3, p0, Lmb/g2;->e:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhb/c;[Lmb/x3;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lmb/g2;->c:I

    .line 2
    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    .line 3
    iput-object p2, p0, Lmb/g2;->e:[Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lmb/g2;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final k(Lmb/b7;)V
    .locals 4

    iget v0, p0, Lmb/g2;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p1, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "requires "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lmb/g2;->e:[Ljava/lang/Object;

    check-cast v1, [Lmb/x3;

    invoke-virtual {p1, v1}, Lmb/c7;->u([Lmb/x3;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    iget-object p0, p0, Lmb/g2;->d:[Ljava/lang/String;

    array-length v2, p0

    invoke-static {v2, v1, p0}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p1, p1, Lmb/b7;->m:Lmb/c7;

    iget-object p1, p1, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "provides "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    iget-object v2, p0, Lmb/g2;->d:[Ljava/lang/String;

    array-length v3, v2

    invoke-static {v3, v1, v2}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/g2;->e:[Ljava/lang/Object;

    check-cast p0, [[Ljava/lang/String;

    invoke-static {p0}, La/a;->p([[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object p1, p1, Lmb/b7;->m:Lmb/c7;

    iget-object p1, p1, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "opens "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    iget-object v2, p0, Lmb/g2;->d:[Ljava/lang/String;

    array-length v3, v2

    invoke-static {v3, v1, v2}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lmb/g2;->e:[Ljava/lang/Object;

    check-cast p0, [[Ljava/lang/String;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, La/a;->p([[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string p0, ";"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p1, p1, Lmb/b7;->m:Lmb/c7;

    iget-object p1, p1, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exports "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    iget-object v2, p0, Lmb/g2;->d:[Ljava/lang/String;

    array-length v3, v2

    invoke-static {v3, v1, v2}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lmb/g2;->e:[Ljava/lang/Object;

    check-cast p0, [[Ljava/lang/String;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, La/a;->p([[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const-string p0, ";"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
