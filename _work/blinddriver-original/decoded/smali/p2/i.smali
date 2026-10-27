.class public final enum Lp2/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lp2/i;

.field public static final enum m:Lp2/i;

.field public static final enum n:Lp2/i;

.field public static final enum o:Lp2/i;

.field public static final enum p:Lp2/i;

.field public static final enum q:Lp2/i;

.field public static final enum r:Lp2/i;

.field public static final synthetic s:[Lp2/i;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lp2/i;

    const-string v1, "Paragraph"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp2/i;->l:Lp2/i;

    new-instance v1, Lp2/i;

    const-string v2, "Span"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lp2/i;->m:Lp2/i;

    new-instance v2, Lp2/i;

    const-string v3, "VerbatimTts"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lp2/i;->n:Lp2/i;

    new-instance v3, Lp2/i;

    const-string v4, "Url"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lp2/i;->o:Lp2/i;

    new-instance v4, Lp2/i;

    const-string v5, "Link"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lp2/i;->p:Lp2/i;

    new-instance v5, Lp2/i;

    const-string v6, "Clickable"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lp2/i;->q:Lp2/i;

    new-instance v6, Lp2/i;

    const-string v7, "String"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lp2/i;->r:Lp2/i;

    filled-new-array/range {v0 .. v6}, [Lp2/i;

    move-result-object v0

    sput-object v0, Lp2/i;->s:[Lp2/i;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lp2/i;
    .locals 1

    const-class v0, Lp2/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp2/i;

    return-object p0
.end method

.method public static values()[Lp2/i;
    .locals 1

    sget-object v0, Lp2/i;->s:[Lp2/i;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp2/i;

    return-object v0
.end method
