.class public final enum Lid/f0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final Companion:Lid/e0;

.field public static final enum n:Lid/f0;

.field public static final enum o:Lid/f0;

.field public static final enum p:Lid/f0;

.field public static final enum q:Lid/f0;

.field public static final enum r:Lid/f0;

.field public static final enum s:Lid/f0;

.field public static final enum t:Lid/f0;

.field public static final enum u:Lid/f0;

.field public static final enum v:Lid/f0;

.field public static final enum w:Lid/f0;

.field public static final enum x:Lid/f0;

.field public static final synthetic y:[Lid/f0;


# instance fields
.field public final l:I

.field public final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lid/f0;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const-string v3, "MOTORWAY"

    invoke-direct {v0, v1, v2, v3, v1}, Lid/f0;-><init>(IILjava/lang/String;Z)V

    sput-object v0, Lid/f0;->n:Lid/f0;

    move v3, v1

    new-instance v1, Lid/f0;

    const/4 v4, 0x1

    const/4 v5, 0x6

    const-string v6, "TRUNK"

    invoke-direct {v1, v4, v5, v6, v3}, Lid/f0;-><init>(IILjava/lang/String;Z)V

    sput-object v1, Lid/f0;->o:Lid/f0;

    move v6, v2

    new-instance v2, Lid/f0;

    const/4 v7, 0x2

    const/4 v8, 0x5

    const-string v9, "PRIMARY"

    invoke-direct {v2, v7, v8, v9, v3}, Lid/f0;-><init>(IILjava/lang/String;Z)V

    sput-object v2, Lid/f0;->p:Lid/f0;

    move v9, v3

    new-instance v3, Lid/f0;

    const/4 v10, 0x3

    const/4 v11, 0x4

    const-string v12, "SECONDARY"

    invoke-direct {v3, v10, v11, v12, v9}, Lid/f0;-><init>(IILjava/lang/String;Z)V

    sput-object v3, Lid/f0;->q:Lid/f0;

    move v12, v4

    new-instance v4, Lid/f0;

    const-string v13, "TERTIARY"

    invoke-direct {v4, v11, v10, v13, v9}, Lid/f0;-><init>(IILjava/lang/String;Z)V

    sput-object v4, Lid/f0;->r:Lid/f0;

    move v10, v5

    new-instance v5, Lid/f0;

    const-string v11, "UNCLASSIFIED"

    invoke-direct {v5, v8, v7, v11, v9}, Lid/f0;-><init>(IILjava/lang/String;Z)V

    sput-object v5, Lid/f0;->s:Lid/f0;

    move v7, v6

    new-instance v6, Lid/f0;

    const-string v8, "RESIDENTIAL"

    invoke-direct {v6, v10, v12, v8, v12}, Lid/f0;-><init>(IILjava/lang/String;Z)V

    sput-object v6, Lid/f0;->t:Lid/f0;

    move v8, v7

    new-instance v7, Lid/f0;

    const-string v10, "LIVING_STREET"

    invoke-direct {v7, v8, v9, v10, v12}, Lid/f0;-><init>(IILjava/lang/String;Z)V

    sput-object v7, Lid/f0;->u:Lid/f0;

    new-instance v8, Lid/f0;

    const-string v10, "SERVICE"

    const/16 v11, 0x8

    invoke-direct {v8, v11, v9, v10, v12}, Lid/f0;-><init>(IILjava/lang/String;Z)V

    sput-object v8, Lid/f0;->v:Lid/f0;

    move v10, v9

    new-instance v9, Lid/f0;

    const-string v11, "TRACK"

    const/16 v13, 0x9

    invoke-direct {v9, v13, v10, v11, v12}, Lid/f0;-><init>(IILjava/lang/String;Z)V

    sput-object v9, Lid/f0;->w:Lid/f0;

    move v11, v10

    new-instance v10, Lid/f0;

    const-string v13, "OTHER"

    const/16 v14, 0xa

    invoke-direct {v10, v14, v12, v13, v11}, Lid/f0;-><init>(IILjava/lang/String;Z)V

    sput-object v10, Lid/f0;->x:Lid/f0;

    filled-new-array/range {v0 .. v10}, [Lid/f0;

    move-result-object v0

    sput-object v0, Lid/f0;->y:[Lid/f0;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    new-instance v0, Lid/e0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lid/f0;->Companion:Lid/e0;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lid/f0;->l:I

    iput-boolean p4, p0, Lid/f0;->m:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lid/f0;
    .locals 1

    const-class v0, Lid/f0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lid/f0;

    return-object p0
.end method

.method public static values()[Lid/f0;
    .locals 1

    sget-object v0, Lid/f0;->y:[Lid/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lid/f0;

    return-object v0
.end method
