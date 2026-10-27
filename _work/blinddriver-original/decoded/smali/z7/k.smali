.class public final Lz7/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/v;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lz7/k;->l:I

    iput-object p2, p0, Lz7/k;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lw7/l;Ld8/a;)Lw7/u;
    .locals 1

    iget v0, p0, Lz7/k;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class p2, Ljava/util/Calendar;

    if-eq p1, p2, :cond_1

    const-class p2, Ljava/util/GregorianCalendar;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lz7/k;->m:Ljava/lang/Object;

    check-cast p0, Lw7/i;

    :goto_1
    return-object p0

    :pswitch_0
    iget-object p2, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_2

    new-instance p2, Lz7/l;

    iget-object p0, p0, Lz7/k;->m:Ljava/lang/Object;

    check-cast p0, Lw7/t;

    invoke-direct {p2, p1, p0}, Lz7/l;-><init>(Lw7/l;Lw7/t;)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    return-object p2

    :pswitch_1
    iget-object p1, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class p2, Ljava/lang/Number;

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lz7/k;->m:Ljava/lang/Object;

    check-cast p0, Lz7/c;

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lz7/k;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz7/k;->m:Ljava/lang/Object;

    check-cast p0, Lw7/i;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
