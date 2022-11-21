{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "3671677b",
   "metadata": {
    "_cell_guid": "b1076dfc-b9ad-4769-8c92-a6c4dae69d19",
    "_uuid": "8f2839f25d086af736a60e9eeb907d3b93b6e0e5",
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:06.417615Z",
     "iopub.status.busy": "2022-11-21T10:00:06.414589Z",
     "iopub.status.idle": "2022-11-21T10:00:41.987569Z",
     "shell.execute_reply": "2022-11-21T10:00:41.985368Z"
    },
    "papermill": {
     "duration": 35.584337,
     "end_time": "2022-11-21T10:00:41.990532",
     "exception": false,
     "start_time": "2022-11-21T10:00:06.406195",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "install.packages(\"pracma\",repos = \"https://R-Forge.R-project.org\")\n",
    "library(pracma)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "08f2bc85",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.042037Z",
     "iopub.status.busy": "2022-11-21T10:00:42.003163Z",
     "iopub.status.idle": "2022-11-21T10:00:42.068966Z",
     "shell.execute_reply": "2022-11-21T10:00:42.067201Z"
    },
    "papermill": {
     "duration": 0.075107,
     "end_time": "2022-11-21T10:00:42.071303",
     "exception": false,
     "start_time": "2022-11-21T10:00:41.996196",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<dl>\n",
       "\t<dt>$Q</dt>\n",
       "\t\t<dd>1</dd>\n",
       "\t<dt>$error</dt>\n",
       "\t\t<dd>1.38777878078145e-16</dd>\n",
       "</dl>\n"
      ],
      "text/latex": [
       "\\begin{description}\n",
       "\\item[\\$Q] 1\n",
       "\\item[\\$error] 1.38777878078145e-16\n",
       "\\end{description}\n"
      ],
      "text/markdown": [
       "$Q\n",
       ":   1\n",
       "$error\n",
       ":   1.38777878078145e-16\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "$Q\n",
       "[1] 1\n",
       "\n",
       "$error\n",
       "[1] 1.387779e-16\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "fxy<-function(x,y){\n",
    "    (2/5)*(2*x+3*y)\n",
    "}\n",
    "integral2(fxy,0,1,0,1)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "d5dcc505",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.084501Z",
     "iopub.status.busy": "2022-11-21T10:00:42.082899Z",
     "iopub.status.idle": "2022-11-21T10:00:42.108566Z",
     "shell.execute_reply": "2022-11-21T10:00:42.106782Z"
    },
    "papermill": {
     "duration": 0.035346,
     "end_time": "2022-11-21T10:00:42.111431",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.076085",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1.4"
      ],
      "text/latex": [
       "1.4"
      ],
      "text/markdown": [
       "1.4"
      ],
      "text/plain": [
       "[1] 1.4"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# (ii) find marginal distribution g(x) at x = 1\n",
    "fy<-function(y){\n",
    "    (2/5)*(2+3*y)\n",
    "}\n",
    "integral(fy,0,1)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "a85bf963",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.131574Z",
     "iopub.status.busy": "2022-11-21T10:00:42.129894Z",
     "iopub.status.idle": "2022-11-21T10:00:42.154082Z",
     "shell.execute_reply": "2022-11-21T10:00:42.152272Z"
    },
    "papermill": {
     "duration": 0.039782,
     "end_time": "2022-11-21T10:00:42.156643",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.116861",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.4"
      ],
      "text/latex": [
       "0.4"
      ],
      "text/markdown": [
       "0.4"
      ],
      "text/plain": [
       "[1] 0.4"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# (iii) find the marginal distribution h(y) at y = 0\n",
    "fx<-function(x){\n",
    "    (2/5)*(2*x)\n",
    "}\n",
    "integral(fx,0,1)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "3e6208fb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.170963Z",
     "iopub.status.busy": "2022-11-21T10:00:42.169281Z",
     "iopub.status.idle": "2022-11-21T10:00:42.206273Z",
     "shell.execute_reply": "2022-11-21T10:00:42.203706Z"
    },
    "papermill": {
     "duration": 0.046937,
     "end_time": "2022-11-21T10:00:42.208971",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.162034",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<dl>\n",
       "\t<dt>$Q</dt>\n",
       "\t\t<dd>0.333333333333333</dd>\n",
       "\t<dt>$error</dt>\n",
       "\t\t<dd>7.97972798949331e-17</dd>\n",
       "</dl>\n"
      ],
      "text/latex": [
       "\\begin{description}\n",
       "\\item[\\$Q] 0.333333333333333\n",
       "\\item[\\$error] 7.97972798949331e-17\n",
       "\\end{description}\n"
      ],
      "text/markdown": [
       "$Q\n",
       ":   0.333333333333333\n",
       "$error\n",
       ":   7.97972798949331e-17\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "$Q\n",
       "[1] 0.3333333\n",
       "\n",
       "$error\n",
       "[1] 7.979728e-17\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# (iv)\n",
    "exp.val <- function(x,y) {x*y*fxy(x,y)}\n",
    "integral2(exp.val,0,1,0,1)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a3e0b15f",
   "metadata": {
    "papermill": {
     "duration": 0.005273,
     "end_time": "2022-11-21T10:00:42.219716",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.214443",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Question2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "e94feee7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.234292Z",
     "iopub.status.busy": "2022-11-21T10:00:42.232466Z",
     "iopub.status.idle": "2022-11-21T10:00:42.250293Z",
     "shell.execute_reply": "2022-11-21T10:00:42.248377Z"
    },
    "papermill": {
     "duration": 0.028008,
     "end_time": "2022-11-21T10:00:42.252943",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.224935",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "fxy <- function(x,y) {(x+y)/30}\n",
    "x <- c(0,1,2,3)\n",
    "y <- c(0,1,2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "c90db0a0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.267387Z",
     "iopub.status.busy": "2022-11-21T10:00:42.265715Z",
     "iopub.status.idle": "2022-11-21T10:00:42.280186Z",
     "shell.execute_reply": "2022-11-21T10:00:42.278337Z"
    },
    "papermill": {
     "duration": 0.024303,
     "end_time": "2022-11-21T10:00:42.282730",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.258427",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "m <- matrix(0,4,3)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "57780fc4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.296793Z",
     "iopub.status.busy": "2022-11-21T10:00:42.295219Z",
     "iopub.status.idle": "2022-11-21T10:00:42.332967Z",
     "shell.execute_reply": "2022-11-21T10:00:42.329878Z"
    },
    "papermill": {
     "duration": 0.049607,
     "end_time": "2022-11-21T10:00:42.337665",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.288058",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "for (i in 1:length(x)) {\n",
    "#     print(i)\n",
    "  for (j in 1:length(y)) {\n",
    "    m[i,j] = fxy(x[i],y[j])\n",
    "  }\n",
    "}"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "cbac97a6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.358942Z",
     "iopub.status.busy": "2022-11-21T10:00:42.355777Z",
     "iopub.status.idle": "2022-11-21T10:00:42.385890Z",
     "shell.execute_reply": "2022-11-21T10:00:42.383536Z"
    },
    "papermill": {
     "duration": 0.044034,
     "end_time": "2022-11-21T10:00:42.388949",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.344915",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 4 × 3 of type dbl</caption>\n",
       "<tbody>\n",
       "\t<tr><td>0.00000000</td><td>0.03333333</td><td>0.06666667</td></tr>\n",
       "\t<tr><td>0.03333333</td><td>0.06666667</td><td>0.10000000</td></tr>\n",
       "\t<tr><td>0.06666667</td><td>0.10000000</td><td>0.13333333</td></tr>\n",
       "\t<tr><td>0.10000000</td><td>0.13333333</td><td>0.16666667</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 4 × 3 of type dbl\n",
       "\\begin{tabular}{lll}\n",
       "\t 0.00000000 & 0.03333333 & 0.06666667\\\\\n",
       "\t 0.03333333 & 0.06666667 & 0.10000000\\\\\n",
       "\t 0.06666667 & 0.10000000 & 0.13333333\\\\\n",
       "\t 0.10000000 & 0.13333333 & 0.16666667\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 4 × 3 of type dbl\n",
       "\n",
       "| 0.00000000 | 0.03333333 | 0.06666667 |\n",
       "| 0.03333333 | 0.06666667 | 0.10000000 |\n",
       "| 0.06666667 | 0.10000000 | 0.13333333 |\n",
       "| 0.10000000 | 0.13333333 | 0.16666667 |\n",
       "\n"
      ],
      "text/plain": [
       "     [,1]       [,2]       [,3]      \n",
       "[1,] 0.00000000 0.03333333 0.06666667\n",
       "[2,] 0.03333333 0.06666667 0.10000000\n",
       "[3,] 0.06666667 0.10000000 0.13333333\n",
       "[4,] 0.10000000 0.13333333 0.16666667"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "m\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "b4598fa2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.403637Z",
     "iopub.status.busy": "2022-11-21T10:00:42.401820Z",
     "iopub.status.idle": "2022-11-21T10:00:42.429681Z",
     "shell.execute_reply": "2022-11-21T10:00:42.427515Z"
    },
    "papermill": {
     "duration": 0.038302,
     "end_time": "2022-11-21T10:00:42.432643",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.394341",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1"
      ],
      "text/latex": [
       "1"
      ],
      "text/markdown": [
       "1"
      ],
      "text/plain": [
       "[1] 1"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# (ii) check that it is joint mass function or not? (use: Sum())\n",
    "sum(m)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "f47265b4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.455087Z",
     "iopub.status.busy": "2022-11-21T10:00:42.453421Z",
     "iopub.status.idle": "2022-11-21T10:00:42.470512Z",
     "shell.execute_reply": "2022-11-21T10:00:42.468719Z"
    },
    "papermill": {
     "duration": 0.036211,
     "end_time": "2022-11-21T10:00:42.474259",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.438048",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# (iii) find the marginal distribution g(x) for x = 0, 1, 2, 3. (Use:apply())\n",
    "g<-apply(m,1,sum)\n",
    "# sum along rows that is marginal probailities for x=0,x=1...\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "822f3dcd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.489691Z",
     "iopub.status.busy": "2022-11-21T10:00:42.487829Z",
     "iopub.status.idle": "2022-11-21T10:00:42.504946Z",
     "shell.execute_reply": "2022-11-21T10:00:42.503075Z"
    },
    "papermill": {
     "duration": 0.02841,
     "end_time": "2022-11-21T10:00:42.508513",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.480103",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# (iv) find the marginal distribution h(y) for y = 0, 1, 2. (Use:apply())\n",
    "h<-apply(m,2,sum)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "9bc1e857",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.523784Z",
     "iopub.status.busy": "2022-11-21T10:00:42.522207Z",
     "iopub.status.idle": "2022-11-21T10:00:42.655500Z",
     "shell.execute_reply": "2022-11-21T10:00:42.653292Z"
    },
    "papermill": {
     "duration": 0.143991,
     "end_time": "2022-11-21T10:00:42.658518",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.514527",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.1"
      ],
      "text/latex": [
       "0.1"
      ],
      "text/markdown": [
       "0.1"
      ],
      "text/plain": [
       "[1] 0.1"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# (v) find the conditional probability at x = 0 given y = 1.\n",
    "m[1,2]/apply(m,2,sum)[2]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "239bd97b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.673267Z",
     "iopub.status.busy": "2022-11-21T10:00:42.671761Z",
     "iopub.status.idle": "2022-11-21T10:00:42.700293Z",
     "shell.execute_reply": "2022-11-21T10:00:42.698606Z"
    },
    "papermill": {
     "duration": 0.039167,
     "end_time": "2022-11-21T10:00:42.703277",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.664110",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2"
      ],
      "text/latex": [
       "2"
      ],
      "text/markdown": [
       "2"
      ],
      "text/plain": [
       "[1] 2"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "1.26666666666667"
      ],
      "text/latex": [
       "1.26666666666667"
      ],
      "text/markdown": [
       "1.26666666666667"
      ],
      "text/plain": [
       "[1] 1.266667"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# (vi) find E(x), E(y), E(xy), V ar(x), V ar(y), Cov(x, y) and its correlation coefficient.\n",
    "ex <- sum(x*g)\n",
    "ey <- sum(y*h)\n",
    "ex\n",
    "ey\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "7cb20281",
   "metadata": {
    "papermill": {
     "duration": 0.006007,
     "end_time": "2022-11-21T10:00:42.715375",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.709368",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "f1a22568",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.731316Z",
     "iopub.status.busy": "2022-11-21T10:00:42.729784Z",
     "iopub.status.idle": "2022-11-21T10:00:42.753950Z",
     "shell.execute_reply": "2022-11-21T10:00:42.752176Z"
    },
    "papermill": {
     "duration": 0.035582,
     "end_time": "2022-11-21T10:00:42.757257",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.721675",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "exy=0\n",
    "for (i in 1:nrow(m)){\n",
    "    for(j in 1:ncol(m)){\n",
    "        exy=exy+(i-1)*(j-1)*m[i,j]\n",
    "    }\n",
    "}"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "33af92bf",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.772861Z",
     "iopub.status.busy": "2022-11-21T10:00:42.771212Z",
     "iopub.status.idle": "2022-11-21T10:00:42.791003Z",
     "shell.execute_reply": "2022-11-21T10:00:42.789098Z"
    },
    "papermill": {
     "duration": 0.030321,
     "end_time": "2022-11-21T10:00:42.793741",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.763420",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2.4"
      ],
      "text/latex": [
       "2.4"
      ],
      "text/markdown": [
       "2.4"
      ],
      "text/plain": [
       "[1] 2.4"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "exy"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "9a035d55",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.809623Z",
     "iopub.status.busy": "2022-11-21T10:00:42.807964Z",
     "iopub.status.idle": "2022-11-21T10:00:42.831416Z",
     "shell.execute_reply": "2022-11-21T10:00:42.829162Z"
    },
    "papermill": {
     "duration": 0.034383,
     "end_time": "2022-11-21T10:00:42.834470",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.800087",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "exx <- sum(x*x*g)\n",
    "eyy <- sum(y*y*h)\n",
    "\n",
    "varx<-exx-ex*ex\n",
    "vary<-eyy-ey*ey"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "9d8b5047",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-21T10:00:42.852322Z",
     "iopub.status.busy": "2022-11-21T10:00:42.850377Z",
     "iopub.status.idle": "2022-11-21T10:00:42.875269Z",
     "shell.execute_reply": "2022-11-21T10:00:42.872395Z"
    },
    "papermill": {
     "duration": 0.036652,
     "end_time": "2022-11-21T10:00:42.878637",
     "exception": false,
     "start_time": "2022-11-21T10:00:42.841985",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-0.133333333333333"
      ],
      "text/latex": [
       "-0.133333333333333"
      ],
      "text/markdown": [
       "-0.133333333333333"
      ],
      "text/plain": [
       "[1] -0.1333333"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "covxy <- exy - ex*ey\n",
    "covxy"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 41.054032,
   "end_time": "2022-11-21T10:00:43.008629",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-11-21T10:00:01.954597",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
