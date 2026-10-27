.class public final Lr/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Lr/c;

.field public static final b:Ln/r0;

.field public static final c:Lr/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr/c;->a:Lr/c;

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v0

    sput-object v0, Lr/c;->b:Ln/r0;

    new-instance v0, Lr/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr/c;->c:Lr/b;

    return-void
.end method
