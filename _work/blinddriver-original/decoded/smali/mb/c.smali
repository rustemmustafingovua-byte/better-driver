.class public final Lmb/c;
.super Lmb/m;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lorg/codehaus/janino/util/q0;

.field public final synthetic b:Lmb/k;


# direct methods
.method public constructor <init>(Lorg/codehaus/janino/util/q0;Lmb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/c;->a:Lorg/codehaus/janino/util/q0;

    iput-object p2, p0, Lmb/c;->b:Lmb/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lmb/c;->b:Lmb/k;

    iget v0, v0, Lmb/k;->a:I

    int-to-short v0, v0

    iget-object p0, p0, Lmb/c;->a:Lorg/codehaus/janino/util/q0;

    iput-short v0, p0, Lorg/codehaus/janino/util/q0;->a:S

    return-void
.end method
