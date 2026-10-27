.class public final Lb6/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final s:Lb6/h0;

.field public static final t:Lb6/h0;

.field public static final u:Lb6/h0;


# instance fields
.field public final l:Ljava/lang/Boolean;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/String;

.field public final transient p:Lb6/g0;

.field public final q:Lr5/b1;

.field public final r:Lr5/b1;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lb6/h0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lb6/h0;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lb6/g0;Lr5/b1;Lr5/b1;)V

    sput-object v0, Lb6/h0;->s:Lb6/h0;

    new-instance v1, Lb6/h0;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lb6/h0;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lb6/g0;Lr5/b1;Lr5/b1;)V

    sput-object v1, Lb6/h0;->t:Lb6/h0;

    new-instance v2, Lb6/h0;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lb6/h0;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lb6/g0;Lr5/b1;Lr5/b1;)V

    sput-object v2, Lb6/h0;->u:Lb6/h0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lb6/g0;Lr5/b1;Lr5/b1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb6/h0;->l:Ljava/lang/Boolean;

    iput-object p2, p0, Lb6/h0;->m:Ljava/lang/String;

    iput-object p3, p0, Lb6/h0;->n:Ljava/lang/Integer;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p4, 0x0

    :cond_1
    iput-object p4, p0, Lb6/h0;->o:Ljava/lang/String;

    iput-object p5, p0, Lb6/h0;->p:Lb6/g0;

    iput-object p6, p0, Lb6/h0;->q:Lr5/b1;

    iput-object p7, p0, Lb6/h0;->r:Lr5/b1;

    return-void
.end method

.method public static a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lb6/h0;
    .locals 8

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lb6/h0;->u:Lb6/h0;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lb6/h0;->s:Lb6/h0;

    return-object p0

    :cond_2
    sget-object p0, Lb6/h0;->t:Lb6/h0;

    return-object p0

    :cond_3
    :goto_0
    new-instance v0, Lb6/h0;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lb6/h0;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lb6/g0;Lr5/b1;Lr5/b1;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lb6/g0;)Lb6/h0;
    .locals 8

    new-instance v0, Lb6/h0;

    iget-object v6, p0, Lb6/h0;->q:Lr5/b1;

    iget-object v7, p0, Lb6/h0;->r:Lr5/b1;

    iget-object v1, p0, Lb6/h0;->l:Ljava/lang/Boolean;

    iget-object v2, p0, Lb6/h0;->m:Ljava/lang/String;

    iget-object v3, p0, Lb6/h0;->n:Ljava/lang/Integer;

    iget-object v4, p0, Lb6/h0;->o:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lb6/h0;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lb6/g0;Lr5/b1;Lr5/b1;)V

    return-object v0
.end method
