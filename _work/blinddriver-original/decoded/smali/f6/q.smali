.class public final Lf6/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/r;
.implements Ljava/io/Serializable;


# static fields
.field public static final n:Lf6/q;

.field public static final o:Lf6/q;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf6/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf6/q;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lf6/q;->n:Lf6/q;

    new-instance v0, Lf6/q;

    invoke-direct {v0, v1, v2}, Lf6/q;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lf6/q;->o:Lf6/q;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lf6/q;->l:I

    iput-object p2, p0, Lf6/q;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb6/i0;Lb6/l;)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lf6/q;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lf6/q;->m:Ljava/lang/Object;

    return-void
.end method

.method public static a(Le6/r;)Z
    .locals 1

    sget-object v0, Lf6/q;->n:Lf6/q;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getNullValue(Lb6/i;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lf6/q;->l:I

    iget-object p0, p0, Lf6/q;->m:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lb6/i0;

    sget v0, Lh6/d;->p:I

    sget-object v0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    if-nez p0, :cond_0

    const-string p0, "<UNKNOWN>"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "Invalid `null` value encountered for property "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lh6/d;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object p1, v1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lb6/i;->t:Ls5/k;

    :goto_1
    invoke-direct {v0, p1, p0, v1}, Lh6/b;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    check-cast p0, Lb6/n;

    invoke-virtual {p0, p1}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    :pswitch_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
