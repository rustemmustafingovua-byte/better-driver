.class public final Ls6/t;
.super Ls6/r;
.source "SourceFile"


# static fields
.field public static final p:Ls6/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls6/t;

    const-class v1, Ljava/lang/Float;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Ls6/r;-><init>(ILjava/lang/Class;)V

    sput-object v0, Ls6/t;->p:Ls6/t;

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p2, p0}, Ls5/g;->W(F)V

    return-void
.end method
